require 'spec_helper'

describe "categorias/show" do
  before(:each) do
    @categorias = assign(:categorias, stub_model(Categorias,
      :nome => "Nome",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
  end
end
