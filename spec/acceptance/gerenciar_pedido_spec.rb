# coding: utf-8
require 'spec_helper'

feature 'gerenciar pedido' do

  scenario 'incluir pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'XXX')

    visit new_pedido_path

    preencher_e_verificar_pedido
   

  end

  scenario 'alterar pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'XXX')

    pedido = FactoryGirl.create(:pedido,:cliente => cliente)

    visit edit_pedido_path(pedido)

    preencher_e_verificar_pedido


  end

  scenario 'excluir pedido' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'XXX')

    pedido = FactoryGirl.create(:pedido,:cliente => cliente)

    visit pedidos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_pedido
  
    fill_in 'Data', :with => '2013-07-07'
    fill_in 'Hora', :with => '00:00'

    select 'XXX', :from => 'Cliente' 
    
    click_button 'Salvar'

    page.should have_content 'Data: 2013-07-07'
    page.should have_content 'Hora: 00:00'
    page.should have_content 'Cliente: XXX'
    end
end
