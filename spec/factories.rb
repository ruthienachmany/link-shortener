FactoryGirl.define do 
  factory :link do
    long_link "http://www.google.com"
    short_link "IJYGWHqM"
    http_status 301
    visit_count 0
  end
end

