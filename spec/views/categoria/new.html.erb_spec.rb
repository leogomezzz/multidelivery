require 'spec_helper'

describe "categoria/new" do
  before(:each) do
    assign(:categorium, stub_model(Categorium,
      :nome => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new categorium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categoria_path, "post" do
      assert_select "input#categorium_nome[name=?]", "categorium[nome]"
      assert_select "input#categorium_descricao[name=?]", "categorium[descricao]"
    end
  end
end
