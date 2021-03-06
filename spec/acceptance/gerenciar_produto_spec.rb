# coding: utf-8
require 'spec_helper'

feature 'gerenciar produto' do

  scenario 'incluir produto' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    category = FactoryGirl.create(:category, :nome => 'XXX')

    visit new_produto_path

    preencher_e_verificar_produto
   

  end

  scenario 'alterar produto' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    category = FactoryGirl.create(:category, :nome => 'XXX')

    produto = FactoryGirl.create(:produto,:empresa=> empresa,:category => category)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto


  end

  scenario 'excluir produto' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')
    category = FactoryGirl.create(:category, :nome => 'XXX')

    produto = FactoryGirl.create(:produto,:empresa=> empresa,:category => category)

    visit produtos_path

    click_link 'Excluir'
    
    
  end

  def preencher_e_verificar_produto
  
    fill_in 'Nome', :with => 'MC X'
    fill_in 'Peso', :with => '125.9'

    select 'XXX', :from => 'Empresa'
    select 'XXX', :from => 'Category'
    
    click_button 'Salvar'

    page.should have_content 'Nome: MC X'
    page.should have_content 'Peso: 125.9'
    page.should have_content 'Empresa: XXX'
    page.should have_content 'Category: XXX'
    end
end
