# -*- encoding: utf-8 -*-
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :command_group1, :class => CommandGroup do
    title 'タイトルのみ'
    command_summary 'サマリーとタイトル'
  end
  factory :command_group2, :class => CommandGroup do
    title 'どこからも取得されない'
    command_summary 'どこからも取得されない'
  end
  factory :command_group3, :class => CommandGroup do
    title 'その他'
    command_summary 'その他'
  end
  factory :command_group4, :class => CommandGroup do
    title 'hoge'
    command_summary 'hoge'
  end
end
