class Mission < ApplicationRecord
    belongs_to :planet
    belongs_to :scientist

    validates :name, uniqueness: {case_sensitive: false}
end
