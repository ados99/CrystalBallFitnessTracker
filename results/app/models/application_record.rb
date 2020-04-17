class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :user

  def get_latest_record(record_id)
    rec = Users.select(record_id).last
  end

  def calculate_bmi(record_id)
    user = get_latest_record(record_id)
    weight = user.weight
    height = user.height
    bmi = (weight/height) ** 2
    user.update_attribute(:bmi, bmi)
  end

  def calculate_sleep_time
    user = get_latest_record(record_id)
    age = user.age
    sleepTime = case age
    when 0
      "12 - 15 hours"
    when 1..2
      "11 - 14 hours"
    when 3..5
      "10 - 13 hours"
    when 6..13
      "9 - 11 hours"
    when 14..17
      "8 - 10 hours"
    when 18..64
      "7 - 9 hours"
    else
      "7 - 8 hours"
                end
    user.update_attribute(:recommendedSleepTime, sleepTime)
  end

  def calculate_exercise_time
    age = get_latest_record(record_id).age
    exerciseTime = 0
    if age>18
      exerciseTime = 120;
    else

    end
    user.update_attribute(:recommendedExerciseTime, exerciseTime)
  end

  def calculate_calorie_count

  end
end
