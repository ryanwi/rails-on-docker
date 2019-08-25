require 'rails_helper'

RSpec.describe "foos/show", type: :view do
  before(:each) do
    @foo = assign(:foo, Foo.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
