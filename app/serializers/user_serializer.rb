class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :email, :created_at
end
