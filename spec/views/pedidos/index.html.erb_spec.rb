require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :data => "Data",
        :hora => "Hora",
        :cliente => nil
      ),
      stub_model(Pedido,
        :data => "Data",
        :hora => "Hora",
        :cliente => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
