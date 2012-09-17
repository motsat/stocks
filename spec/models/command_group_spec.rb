# -*- encoding: utf-8 -*-
require 'spec_helper'
#require 'factory_girl'
describe CommandGroup do
  it 'titleのみにヒットする検索でデータとれる事' do
    #CommandGroup.by_title_or_summary('hoge').should be_nil
    @command_groups = [FactoryGirl.build(:command_group1),
                       FactoryGirl.build(:command_group2),
                       FactoryGirl.build(:command_group3),
                       FactoryGirl.build(:command_group4)]
    Rails.logger.info CommandGroup.all
    @command_groups.size.should eq 4

    # http://naoty.hatenablog.com/entry/20111030/1319973849
    # FactoryGirl.build(:command_group1)
    # FactoryGirl.build(:command_group2)
    # FactoryGirl.build(:command_group3)
    # FactoryGirl.build(:command_group4)
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
