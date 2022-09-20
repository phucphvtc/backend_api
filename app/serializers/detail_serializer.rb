class DetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :type_name
  
  def type_name
    object.type.name
  end


  # belongs_to :type

end
