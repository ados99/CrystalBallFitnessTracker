require "application_system_test_case"

class MealsTest < ApplicationSystemTestCase
  setup do
    @meal = meals(:one)
  end

  test "visiting the index" do
    visit meals_url
    assert_selector "h1", text: "Meals"
  end

  test "creating a Meal" do
    visit meals_url
    click_on "New Meal"

    fill_in "Breakfast", with: @meal.Breakfast
    fill_in "Breakfast calorie", with: @meal.Breakfast_Calorie
    fill_in "Date", with: @meal.Date
    fill_in "Dinner", with: @meal.Dinner
    fill_in "Dinner calorie", with: @meal.Dinner_Calorie
    fill_in "Lunch", with: @meal.Lunch
    fill_in "Lunch calorie", with: @meal.Lunch_Calorie
    fill_in "Snack", with: @meal.Snack
    fill_in "Snack calorie", with: @meal.Snack_Calorie
    click_on "Create Meal"

    assert_text "Meal was successfully created"
    click_on "Back"
  end

  test "updating a Meal" do
    visit meals_url
    click_on "Edit", match: :first

    fill_in "Breakfast", with: @meal.Breakfast
    fill_in "Breakfast calorie", with: @meal.Breakfast_Calorie
    fill_in "Date", with: @meal.Date
    fill_in "Dinner", with: @meal.Dinner
    fill_in "Dinner calorie", with: @meal.Dinner_Calorie
    fill_in "Lunch", with: @meal.Lunch
    fill_in "Lunch calorie", with: @meal.Lunch_Calorie
    fill_in "Snack", with: @meal.Snack
    fill_in "Snack calorie", with: @meal.Snack_Calorie
    click_on "Update Meal"

    assert_text "Meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Meal" do
    visit meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meal was successfully destroyed"
  end
end
