class Subject < ActiveRecord::Base
  scope :visible,      -> { where(visible: true) }
  scope :invisible,    -> { where(visible: false) }
  scope :sorted,       -> { order("subjects.position ASC") }
  scope :newest_first, -> { order("subjects.created_at DESC") }
  scope :search,       ->(query) { where(["name LIKE ?", "%#{query}%"]) }

end
