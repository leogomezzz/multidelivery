class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :telefone
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end
