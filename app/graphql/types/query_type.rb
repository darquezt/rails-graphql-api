Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allLinks, !types[Types::LinkType] do
    resolve ->(_obj, _args, _ctx) { Link.all }
  end
end
