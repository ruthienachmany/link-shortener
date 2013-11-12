FactoryGirl.define do 
  factory :link do
    long_link "http://www.google.com"
    short_link "IJYGWHqM"
    status_code 302
    visit_count 0
  end
end

