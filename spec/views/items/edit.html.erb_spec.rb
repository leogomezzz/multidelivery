require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :quantidade => "",
      :produto => nil,
      :pedido => nil
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_quantidade[name=?]", "item[quantidade]"
      assert_select "input#item_produto[name=?]", "item[produto]"
      assert_select "input#item_pedido[name=?]", "item[pedido]"
    end
  end
end
