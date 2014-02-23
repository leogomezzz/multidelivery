require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :peso => "",
      :empresa => nil,
      :category => nil
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do
      assert_select "input#produto_nome[name=?]", "produto[nome]"
      assert_select "input#produto_peso[name=?]", "produto[peso]"
      assert_select "input#produto_empresa[name=?]", "produto[empresa]"
      assert_select "input#produto_category[name=?]", "produto[category]"
    end
  end
end
