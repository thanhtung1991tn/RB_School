function validate_data(){
  $("#new_room").validate({
    rules:{
      "room[name]":{
        required: true,
        minlength: 5,
        maxlength: 20
      },
      "room[area]":{
        required: true,
        digits: true,
        minlength: 1,
        maxlength: 4
      },
      "room[qty]":{
        required: true,
        digits: true,
        minlength: 1,
        maxlength: 4
      }
    },
    messages:{
      "room[name]":{
        required: I18n.t("name_require"),
        minlength: I18n.t("name_minlength"),
        maxlength: I18n.t("name_maxlength")
      },
      "room[area]":{
        required: I18n.t("area_require"),
        digits: I18n.t("num_require"),
        minlength: I18n.t("area_minlength"),
        maxlength: I18n.t("area_maxlength")
      },
      "room[qty]":{
        required: I18n.t("qty_require"),
        digits: I18n.t("num_require"),
        minlength: I18n.t("qty_minlength"),
        maxlength: I18n.t("qty_maxlength")
      }
    },
  });
}
$(document).on('turbolinks:load', function() {
  validate_data();
});

$(document).ready(function() {
  validate_data();
});
