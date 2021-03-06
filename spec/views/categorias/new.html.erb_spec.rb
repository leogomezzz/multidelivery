require 'spec_helper'

describe "categorias/new" do
  before(:each) do
    assign(:categoria, stub_model(Categoria,
      :nome => "MyString",
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new categoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categoria_index_path, "post" do
      assert_select "input#categoria_nome[name=?]", "categoria[nome]"
      assert_select "input#categoria_descricao[name=?]", "categoria[descricao]"
    end
  end
end
