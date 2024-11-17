function get_number() {
    var _numb = ds_list_find_value(global.number_list, ds_list_size(global.number_list) - 1)
    ds_list_delete(global.number_list, ds_list_size(global.number_list) - 1)

    return _numb
}