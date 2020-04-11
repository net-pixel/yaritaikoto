class Page < ApplicationRecord
  validates :content, presence: true


  def self.search(search)
    return Page.all unless search
    Page.where('content LIKE(?)', "%#{search}%")
  end
  # def self.search(search)
  #   if search
  #     Page.where('content LIKE(?)', "%#{search}%")
  #   else
  #     Page.all
  #   end
  # end

end
