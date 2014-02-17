class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :data
      t.string :hora
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
