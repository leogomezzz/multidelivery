# coding: utf-8
require 'spec_helper'

feature 'gerenciar category' do
  scenario 'incluir category', :javascript => true  do
    visit new_category_path
    preencher_e_verificar_category
  end

  scenario 'alterar category' do #, :js => true  do
    category = FactoryGirl.create(:category)
    visit edit_category_path(category)
    preencher_e_verificar_category
  end

   scenario 'excluir category' do #, :javascript => true  do
       category = FactoryGirl.create(:category)
        visit categories_path
        click_link 'Excluir'
end

   def preencher_e_verificar_category
      fill_in 'Nome',  :with => "Bebidas"
      fill_in 'Descrição', :with => "bebidas em geral"
      click_button 'Salvar'
      page.should have_content 'Nome: Bebidas'
      page.should have_content 'Descrição: bebidas em geral'
   end
end
