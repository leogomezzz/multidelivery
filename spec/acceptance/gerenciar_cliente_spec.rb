# coding: utf-8
require 'spec_helper'

feature 'gerenciar cliente' do
  scenario 'incluir cliente', :javascript => true  do
    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  scenario 'alterar cliente' do #, :js => true  do
    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente
  end

   scenario 'excluir cliente' do #, :javascript => true  do
       cliente = FactoryGirl.create(:cliente)
        visit clientes_path
        click_link 'Excluir'
end

   def preencher_e_verificar_cliente
      fill_in 'Nome',  :with => "Luiz"
      fill_in 'Endereço', :with => "Rua dos Bobos"
      fill_in 'CPF', :with => "123456789"
      fill_in 'Telefone', :with => "0222726-0000"
      fill_in 'Celular', :with => "02299999-8888"
      fill_in 'Email', :with => "email@server.com"
      click_button 'Salvar'
      page.should have_content 'Nome: Luiz'
      page.should have_content 'Endereço: Rua dos Bobos'
      page.should have_content 'CPF: 123456789'
      page.should have_content 'Telefone: 0222726-0000'
      page.should have_content 'Celular: 02299999-8888'
      page.should have_content 'Email: email@server.com'
   end
end
