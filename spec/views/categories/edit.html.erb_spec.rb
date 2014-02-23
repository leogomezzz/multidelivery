require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :nome => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", category_path(@category), "post" do
      assert_select "input#category_nome[name=?]", "category[nome]"
      assert_select "input#category_descricao[name=?]", "category[descricao]"
    end
  end
end
