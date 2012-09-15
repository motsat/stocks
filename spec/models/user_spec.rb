require 'spec_helper'
require 'factory_girl'
describe User do
  it 'hoge' do
    [].should be_empty
    # http://naoty.hatenablog.com/entry/20111030/1319973849
    #FactoryGirl.build(:user)
    #FactoryGirl.build(:user1)
  end
end
