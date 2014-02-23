require 'spec_helper'

describe "empresas/index" do
  before(:each) do
    assign(:empresas, [
      stub_model(Empresa,
        :nome => "Nome",
        :cnpj => "Cnpj"
      ),
      stub_model(Empresa,
        :nome => "Nome",
        :cnpj => "Cnpj"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
  end
end
