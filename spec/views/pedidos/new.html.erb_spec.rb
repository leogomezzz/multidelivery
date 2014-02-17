require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :data => "MyString",
      :hora => "MyString",
      :cliente => nil
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedidos_path, "post" do
      assert_select "input#pedido_data[name=?]", "pedido[data]"
      assert_select "input#pedido_hora[name=?]", "pedido[hora]"
      assert_select "input#pedido_cliente[name=?]", "pedido[cliente]"
    end
  end
end
