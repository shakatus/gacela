class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :enterprise
  enum level: [ :compras, :ventas, :ambos ]
end
