class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantidade
      t.references :produto, index: true
      t.references :pedido, index: true

      t.timestamps
    end
  end
end
