require 'spec_helper'

describe "config/projects/edit" do
  before(:each) do
    @config_project = assign(:config_project, stub_model(Legacy,
      :one_line_grab => "MyText",
      :dirty_pictures => "MyText",
      :dirty_testimonial => "MyText",
      :description_project_sheet => "MyText",
      :description_200_500_words => "MyText",
      :description_awards_style => "MyText",
      :dirty_awards => "MyString",
      :innovation_client_style => "MyText",
      :innovation_value_add => "MyText",
      :interesting_things => "MyText",
      :brief_elements => "MyText",
      :security_level => "MyString"
    ))
  end

  it "renders the edit config_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", config_project_path(@config_project), "post" do
      assert_select "textarea#config_project_one_line_grab[name=?]", "config_project[one_line_grab]"
      assert_select "textarea#config_project_dirty_pictures[name=?]", "config_project[dirty_pictures]"
      assert_select "textarea#config_project_dirty_testimonial[name=?]", "config_project[dirty_testimonial]"
      assert_select "textarea#config_project_description_project_sheet[name=?]", "config_project[description_project_sheet]"
      assert_select "textarea#config_project_description_200_500_words[name=?]", "config_project[description_200_500_words]"
      assert_select "textarea#config_project_description_awards_style[name=?]", "config_project[description_awards_style]"
      assert_select "input#config_project_dirty_awards[name=?]", "config_project[dirty_awards]"
      assert_select "textarea#config_project_innovation_client_style[name=?]", "config_project[innovation_client_style]"
      assert_select "textarea#config_project_innovation_value_add[name=?]", "config_project[innovation_value_add]"
      assert_select "textarea#config_project_interesting_things[name=?]", "config_project[interesting_things]"
      assert_select "textarea#config_project_brief_elements[name=?]", "config_project[brief_elements]"
      assert_select "input#config_project_security_level[name=?]", "config_project[security_level]"
    end
  end
end
