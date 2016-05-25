require 'faker'

FactoryGirl.define do
  factory :post do
    title Faker::Name.title
    description Faker::Hipster.paragraph    
  end
end
