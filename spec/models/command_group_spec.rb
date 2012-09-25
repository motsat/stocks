# -*- encoding: utf-8 -*-
require 'spec_helper'
#require 'factory_girl'
describe CommandGroup do
  it 'titleのみにヒットする検索でデータとれる事' do
    CommandGroup.delete_all
    @command_groups = [FactoryGirl.create(:command_group1),
                       FactoryGirl.create(:command_group2),
                       FactoryGirl.create(:command_group3),
                       FactoryGirl.create(:command_group4)]
    CommandGroup.by_title_or_summary('タイトルのみ').size.should eq 1
    CommandGroup.by_title_or_summary('他').size.should eq 1
    CommandGroup.by_title_or_summary('not match').size.should eq 0
    CommandGroup.by_title_or_summary('サマリー').size.should eq 1

  end
  #it 'summaryのみにヒットする検索でデータとれる事' do
  #  pending
  #end
  #it 'title + summaryにヒットする検索でデータとれる事' do
  #  pending
  #end
  #it 'titleにもsummaryにもヒットしない検索でデータとれない事' do
  #  pending
  #end
end
