require 'spec_helper'

describe "categorias/edit" do
  before(:each) do
    @categorias = assign(:categorias, stub_model(Categorias,
      :nome => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit categorias form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categorias_path(@categorias), "post" do
      assert_select "input#categorias_nome[name=?]", "categorias[nome]"
      assert_select "input#categorias_descricao[name=?]", "categorias[descricao]"
    end
  end
end
