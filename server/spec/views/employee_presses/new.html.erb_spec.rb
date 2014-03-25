require 'spec_helper'

describe "config/people/new" do
  before(:each) do
    assign(:config_person, stub_model(EmployeePress).as_new_record)
  end

  it "renders new config_person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employee_presses_path, "post" do
    end
  end
end