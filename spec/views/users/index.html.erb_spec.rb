require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :id_number => "Id Number",
        :sex => "Sex",
        :cellphone_number => "Cellphone Number",
        :email => "Email",
        :utype => "Utype",
        :line_account => "Line Account",
        :line_name => "Line Name",
        :buddhism_exp => "MyText",
        :skills => "MyText"
      ),
      User.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :id_number => "Id Number",
        :sex => "Sex",
        :cellphone_number => "Cellphone Number",
        :email => "Email",
        :utype => "Utype",
        :line_account => "Line Account",
        :line_name => "Line Name",
        :buddhism_exp => "MyText",
        :skills => "MyText"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Utype".to_s, :count => 2
    assert_select "tr>td", :text => "Line Account".to_s, :count => 2
    assert_select "tr>td", :text => "Line Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
