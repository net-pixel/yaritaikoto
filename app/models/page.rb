class Page < ApplicationRecord
  validates :content, presence: true


  def self.search(search)
    return Page.all unless search
    Page.where('content LIKE(?)', "%#{search}%")
  end

end
