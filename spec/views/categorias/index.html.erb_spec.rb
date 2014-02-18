require 'spec_helper'

describe "categorias/index" do
  before(:each) do
    assign(:categorias, [
      stub_model(Categorias,
        :nome => "Nome",
        :descricao => "Descricao"
      ),
      stub_model(Categorias,
        :nome => "Nome",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of categorias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
