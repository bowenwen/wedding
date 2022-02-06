// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// logic for kids button
$(function () {
  var checkMatcher = '#plus_ones-edit-form input[name="plus_one[child]"]'
  var checkBox = $(checkMatcher)
  function toggleKidsOnly () {
    var kids = checkBox.is(':checked')
    if (kids) {
      $('.guest-meal-option input[id="plus_one_meal_kids"]').prop('hidden', false)
      $('.guest-meal-option label[id="plus_one_meal_kids_label"]').prop('hidden', false)
      $('.guest-meal-option input[id="plus_one_meal_kids"]').prop('checked', true)
      // console.log("Checkbox is checked..")
    } else {
      $('.guest-meal-option input[id="plus_one_meal_chicken"]').prop('checked', true)
      $('.guest-meal-option input[id="plus_one_meal_kids"]').prop('hidden', true)
      $('.guest-meal-option label[id="plus_one_meal_kids_label"]').prop('hidden', true)
      // console.log("Checkbox is not checked..")
    }
  }
  checkBox.change(toggleKidsOnly)
  toggleKidsOnly()
})
