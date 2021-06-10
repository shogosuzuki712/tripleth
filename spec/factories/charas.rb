FactoryBot.define do
  factory :chara do
    text { "MyText" }
    area { 1 }
    gender { 1 }
    age { 1 }
    job_style { 1 }
    exercise_style { 1 }
    user { nil }
  end
end
