class Produto < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :category
end
