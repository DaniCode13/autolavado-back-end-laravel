class Api::V1::EntrySerializer < ActiveModel::Serializer
  type :entry

  attributes(
    :price,
    :description
  )
end
