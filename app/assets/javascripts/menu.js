var main = document.getElementById('main'),
    menu = document.getElementById('menu'),
    menuLink = document.getElementById('menu-link'),
    footer = document.getElementById('footer');

function toggleClass(element, className) {
    var classes = element.className.split(/\s+/),
        length = classes.length,
        i = 0;

    for(; i < length; i++) {
        if (classes[i] === className) {
            classes.splice(i, 1);
            break;
        }
    }
    // The className is not found
    if (length === classes.length) {
        classes.push(className);
    }

    element.className = classes.join(' ');
}

menuLink.onclick = function (e) {
    var active = 'active';

    e.preventDefault();
    toggleClass(main, active);
    toggleClass(menu, active);
    toggleClass(menuLink, active);
    toggleClass(footer, active);
};