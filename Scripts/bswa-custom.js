(function ($, window, document) {

    // Fixed top navbar
    $primaryNav = $('.primary-nav');
    var stickyHeaderTop = $primaryNav.offset().top + $primaryNav.offset().height - 50;
    // perhaps this should be calculated each time in case the position changes,
    // not sure if it's worth the performance hit though?
    $(window).scroll(function () {
        if ($(window).scrollTop() > 80) {
            $('.primary-nav').addClass('navbar-fixed-top');
            $('body').addClass('fixed-primary-nav');
        } else {
            $('.primary-nav').removeClass('navbar-fixed-top');
            $('body').removeClass('fixed-primary-nav');
        }
    });

    //Handles search menu drop down
    $('.dropdown-menu').find('form, .form').click(function (e) {
        e.stopPropagation();
    });

    // Questionare requires some questions to be duplicated
    $('[data-duplicate]').each(function () {
        var $destination = $(this);
        var target = $destination.attr("data-duplicate");
        var $target = $(target);
        var prependHref = $destination.attr("data-duplicate-prepend-href");
        if (typeof $target !== 'undefined' && $target.length > 0) {
            // clone the target element and all it's children
            var clone = $target.clone();
            // When cloning togglable items the selectors will now trigger multiple items
            // thus we prepend an extra level of specificity to the href of any toggle anchors
            if (typeof prependHref !== 'undefined' && prependHref.length > 0) {
                prependToggleHref($(clone), prependHref);
                prependToggleHref($target, target);
            }
            $destination.html(clone.html());
        }
    });
    function prependToggleHref($items, prepend) {
        $items.find('a[data-toggle]').each(function () {
            var $anchor = $(this);
            $anchor.attr('href', prepend + ' ' + $anchor.attr('href'));
        });
    };
    // Swap css files based on cookie value
    var cssFile = $.cookie("css");
    var $cssLink = $("link.css");
    if (cssFile && $cssLink.length > 0) {
        $cssLink.attr("href", cssFile);
    }
    else {
        cssFile = $cssLink.attr("href");
    }

    // add to any config code http://www.addtoany.com/buttons/api/
    var a2a_config = a2a_config || {};
    a2a_config.onclick = 1;
    a2a_config.color_main = "f5effa";
    a2a_config.color_border = "ecddf4";
    a2a_config.color_link_text = "555555";
    a2a_config.color_link_text_hover = "333333";
    a2a_config.templates = {
        email: {
            subject: "${title}",
            body: "I though you might be interested in this:\n${link}"
        }
    };

    $(document).ready(function () {
        $(".inc-text-size").on('click', function () {
            var fileNumber = cssFile.charAt(cssFile.length - 5);
            var newCssFile = cssFile.substring(0, cssFile.length - 5);
            if (fileNumber < 4) {
                fileNumber++;
                newCssFile = newCssFile + fileNumber + ".css";
                $cssLink.attr("href", newCssFile);
                cssFile = newCssFile;
                $.cookie("css", newCssFile, { expires: 365, path: '/' });
            }
            return false;
        });
        $(".dec-text-size").on('click', function () {
            var fileNumber = cssFile.charAt(cssFile.length - 5);
            var newCssFile = cssFile.substring(0, cssFile.length - 5);
            if (fileNumber > 0) {
                fileNumber--;
                newCssFile = newCssFile + fileNumber + ".css";
                $cssLink.attr("href", newCssFile);
                cssFile = newCssFile;
                $.cookie("css", newCssFile, { expires: 365, path: '/' });
            }
            return false;
        });
    });
}(jQuery, window, document));