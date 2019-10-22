FactoryBot.define do
  factory :course do
    title { "Ruby" }
  end

  factory :second_course, class: Course do
    title { "Rails" }
  end
end
