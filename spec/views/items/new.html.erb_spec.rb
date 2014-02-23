require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :quantidade => "",
      :produto => nil,
      :pedido => nil
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_quantidade[name=?]", "item[quantidade]"
      assert_select "input#item_produto[name=?]", "item[produto]"
      assert_select "input#item_pedido[name=?]", "item[pedido]"
    end
  end
end
