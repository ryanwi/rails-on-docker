require 'rails_helper'

RSpec.describe "foos/index", type: :view do
  before(:each) do
    assign(:foos, [
      Foo.create!(
        :name => "Name"
      ),
      Foo.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of foos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
