require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :lastname => "MyString",
      :firstname => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_lastname[name=?]", "contact[lastname]"
      assert_select "input#contact_firstname[name=?]", "contact[firstname]"
    end
  end
end
