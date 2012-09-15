FactoryGirl.define do
  # FactoryGirl.create_list(:user, 5)
  #factory :user do
  #  sequence(:name) {|n| "user #{n}" }
  #end
  factory :user1, :class => User do
    email 'hoge2@gmail.com'
    password 'h2ogehoge'
  end
  factory :user do
    email 'hoge@gmail.com'
    password 'hogehoge'
  end
end
