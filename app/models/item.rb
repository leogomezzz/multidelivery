class Item < ActiveRecord::Base
  belongs_to :produto
  belongs_to :pedido
end
