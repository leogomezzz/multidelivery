# coding: utf-8
require 'spec_helper'

feature 'gerenciar categoria' do
  scenario 'incluir categoria', :javascript => true  do
    visit new_categoria_path
    preencher_e_verificar_categoria
  end

  scenario 'alterar categoria' do #, :js => true  do
    categoria = FactoryGirl.create(:categoria)
    visit edit_categoria_path(categoria)
    preencher_e_verificar_categoria
  end

   scenario 'excluir categoria' do #, :javascript => true  do
       categoria = FactoryGirl.create(:categoria)
        visit categorias_path
        click_link 'Excluir'
end

   def preencher_e_verificar_categoria
      fill_in 'Nome',  :with => "Bebidas"
      fill_in 'Descrição', :with => "bebidas em geral"
      click_button 'Salvar'
      page.should have_content 'Nome: Bebidas'
      page.should have_content 'Descrição: bebidas em geral'
   end
end
