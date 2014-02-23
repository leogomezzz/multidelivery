class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.double :peso
      t.references :empresa, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
