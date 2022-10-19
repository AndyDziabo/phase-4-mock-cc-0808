class SignupSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  def name
    object.activity.name
  end

  def difficulty
    object.activity.difficulty
  end

  def id
    object.camper_id
  end


end
