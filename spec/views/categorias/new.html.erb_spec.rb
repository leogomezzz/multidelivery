require 'spec_helper'

describe "categorias/new" do
  before(:each) do
    assign(:categorias, stub_model(Categorias,
      :nome => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new categorias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categorias_index_path, "post" do
      assert_select "input#categorias_nome[name=?]", "categorias[nome]"
      assert_select "input#categorias_descricao[name=?]", "categorias[descricao]"
    end
  end
end
