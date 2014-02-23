require 'spec_helper'

describe "produtos/new" do
  before(:each) do
    assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :peso => "",
      :empresa => nil,
      :category => nil
    ).as_new_record)
  end

  it "renders new produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produtos_path, "post" do
      assert_select "input#produto_nome[name=?]", "produto[nome]"
      assert_select "input#produto_peso[name=?]", "produto[peso]"
      assert_select "input#produto_empresa[name=?]", "produto[empresa]"
      assert_select "input#produto_category[name=?]", "produto[category]"
    end
  end
end
