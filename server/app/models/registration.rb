class Registration
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :employee

  field :organisation, type: String
  field :registration_number, type: String
  field :state, type: String
  field :country, type: String
  field :expiry, type: Date
  field :first_granted, type: Date
end
