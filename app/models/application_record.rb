class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  after_initialize do |resource|
    resource.id ||= SecureRandom.uuid
  end
end
