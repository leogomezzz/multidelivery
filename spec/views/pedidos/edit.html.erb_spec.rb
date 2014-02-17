require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :data => "MyString",
      :hora => "MyString",
      :cliente => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do
      assert_select "input#pedido_data[name=?]", "pedido[data]"
      assert_select "input#pedido_hora[name=?]", "pedido[hora]"
      assert_select "input#pedido_cliente[name=?]", "pedido[cliente]"
    end
  end
end
