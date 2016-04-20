class Section < ActiveRecord::Base
  has_many :section_edits
  has_many :editors, :through => :section_edits, class_name: "AdminUser"

  scope :visible,      -> { where(visible: true) }
  scope :invisible,    -> { where(visible: false) }
  scope :sorted,       -> { order("sections.position ASC") }
  scope :newest_first, -> { order("sections.created_at DESC") }
end
