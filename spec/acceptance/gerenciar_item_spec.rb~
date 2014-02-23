# coding: utf-8
require 'spec_helper'

feature 'gerenciar item' do

  scenario 'incluir item' do #, :javascript => true  do

    produto = FactoryGirl.create(:produto, :nome => 'XXX')
    pedido = FactoryGirl.create(:pedido, :data => '2013-07-07')

    visit new_item_path

    preencher_e_verificar_item
   

  end

  scenario 'alterar item' do #, :javascript => true  do

    produto = FactoryGirl.create(:produto, :nome => 'XXX')
    pedido = FactoryGirl.create(:pedido, :data => '2013-07-07')

    item = FactoryGirl.create(:item,:produto=> produto, :pedido => pedido)

    visit edit_item_path(item)

    preencher_e_verificar_item


  end

  scenario 'excluir item' do #, :javascript => true  do

    produto = FactoryGirl.create(:produto, :nome => 'XXX')
    pedido = FactoryGirl.create(:pedido, :data => '2013-07-07')

    item = FactoryGirl.create(:item, :produto=> produto, :pedido => pedido)

    visit items_path

    click_link 'Excluir'
    
    
  end

  def preencher_e_verificar_item
  
    fill_in 'Quantidade', :with => '2'

    select 'XXX', :from => 'Produto'
    select "2013-07-07", :from => 'Pedido'
    
    click_button 'Salvar'

    page.should have_content 'Quantidade: 2'
    page.should have_content 'Produto: XXX'
    page.should have_content 'Pedido: 2013-07-07'
    end
end
