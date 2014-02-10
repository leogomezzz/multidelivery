require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :endereco => "Endereco",
      :cpf => "Cpf",
      :telefone => "Telefone",
      :celular => "Celular",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Cpf/)
    rendered.should match(/Telefone/)
    rendered.should match(/Celular/)
    rendered.should match(/Email/)
  end
end
