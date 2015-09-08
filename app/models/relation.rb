class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :enterprise
  belongs_to :level
end
