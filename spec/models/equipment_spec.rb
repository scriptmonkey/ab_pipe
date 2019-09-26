# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Equipment, type: :model do
  it { should respond_to :serial_number }
end
