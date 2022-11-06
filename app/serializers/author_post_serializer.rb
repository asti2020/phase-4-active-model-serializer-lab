class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  

  def short_content
    object.content.truncate(50)
  end
end
