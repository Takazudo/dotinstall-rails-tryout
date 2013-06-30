class Comment < ActiveRecord::Base
  belongs_to :post
  validates :commenter, :presence => true
  validates :body, :presence => true,
    :length => { :minimum => 5 }
end
