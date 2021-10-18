// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {
  var checkMatcher = '#plus_ones-edit-form input[name="plus_one[child]"]'
  var checkBox = $(checkMatcher)
  function toggleKidsOnly () {
    var kids = checkBox.is(':checked')
    // $('.guest-meal-option input').attr('disabled', kids == true)
    // $('.guest-meal-option input').attr('checked', kids !== true) //don't use it is buggy
    if (kids) {
      $('.guest-meal-option input[id="plus_one_meal_kids"]').attr('checked', true)
      // $('.guest-meal-option input').attr('disabled', true)
      // console.log("Checkbox is checked..")
    } else {
      $('.guest-meal-option input').attr('disabled', false)
      // console.log("Checkbox is not checked..")
    }
  }
  checkBox.change(toggleKidsOnly)
  toggleKidsOnly()
})
