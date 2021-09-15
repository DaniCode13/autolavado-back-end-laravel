ENTRY_SCHEMA = {
  type: :object,
  properties: {
    id: { type: :string, example: '1' },
    type: { type: :string, example: 'entry' },
    attributes: {
      type: :object,
      properties: {
        price: { type: :string, example: 'Some price', 'x-nullable': true },
        description: { type: :string, example: 'Some description', 'x-nullable': true }
      },
      required: []
    }
  },
  required: %i[
    id
    type
    attributes
  ]
}

ENTRIES_COLLECTION_SCHEMA = {
  type: 'object',
  properties: {
    data: {
      type: 'array',
      items: { '$ref' => '#/definitions/entry' }
    }
  },
  required: [
    :data
  ]
}

ENTRY_RESOURCE_SCHEMA = {
  type: 'object',
  properties: {
    data: { '$ref' => '#/definitions/entry' }
  },
  required: [
    :data
  ]
}
