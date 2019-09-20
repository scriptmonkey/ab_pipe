# frozen_string_literal: true

# class User < ApplicationRecord
class User < ApplicationRecord
  include Clearance::User
end
