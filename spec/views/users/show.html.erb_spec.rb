require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Id Number/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Cellphone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Utype/)
    expect(rendered).to match(/Line Account/)
    expect(rendered).to match(/Line Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
