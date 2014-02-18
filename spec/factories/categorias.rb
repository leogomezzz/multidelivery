# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categoria, :class => 'Categorias' do
    nome "MyString"
    descricao "MyString"
  end
end
