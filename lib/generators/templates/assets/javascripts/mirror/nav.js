/**
 * Replace the element with max str length
 * @param element_selector selector string like #my_element
 * @param max_length the maximum number of characters
 */
function truncate(element_selector, max_length) {
    var element = $(element_selector);
    var element_val = element.html();
    if(max_length > element_val.length) return;
    var append = '...';
    var new_val = element_val.substring(0, max_length-append.length)+append;
    element.html(new_val);
}

// Ready function
ready = function() {
    var max_length = 'RentS System Admin RentS'.length;
    var user_name_selector = '.menu-top-info strong.user_name';
    truncate(user_name_selector, max_length);
};

// SetUp ready with turbo-links
$(document).ready(ready);
$(document).on('page:load', ready);