require 'rails_helper'

RSpec.describe "foos/new", type: :view do
  before(:each) do
    assign(:foo, Foo.new(
      :name => "MyString"
    ))
  end

  it "renders new foo form" do
    render

    assert_select "form[action=?][method=?]", foos_path, "post" do

      assert_select "input[name=?]", "foo[name]"
    end
  end
end
