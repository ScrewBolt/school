require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :id_number => "MyString",
      :sex => "MyString",
      :cellphone_number => "MyString",
      :email => "MyString",
      :utype => "MyString",
      :line_account => "MyString",
      :line_name => "MyString",
      :buddhism_exp => "MyText",
      :skills => "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[id_number]"

      assert_select "input[name=?]", "user[sex]"

      assert_select "input[name=?]", "user[cellphone_number]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[utype]"

      assert_select "input[name=?]", "user[line_account]"

      assert_select "input[name=?]", "user[line_name]"

      assert_select "textarea[name=?]", "user[buddhism_exp]"

      assert_select "textarea[name=?]", "user[skills]"
    end
  end
end
