class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_one :author, serializer: AuthorSerializer
  has_many :tags, serializer: PostTagSerializer
end
