class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post_text, :user_id

  has_many :num_of_likes
  belongs_to :user

  # def all_likes
  #   self.object.num_of_likes
  # end
  
end
