require 'spec_helper'

describe "categoria/index" do
  before(:each) do
    assign(:categoria, [
      stub_model(Categorium,
        :nome => "Nome",
        :descricao => "Descricao"
      ),
      stub_model(Categorium,
        :nome => "Nome",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of categoria" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
