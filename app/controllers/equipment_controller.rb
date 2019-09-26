# frozen_string_literal: true

# class EquipmentController < ApplicationController
class EquipmentController < ApplicationController
  def index
    redirect_to sign_in_path unless signed_in?
  end

  def new
    @equipment = Equipment.new
  end

  def create
    equipment = Equipment.new(equipment_params)
    equipment.save
    redirect_to equipment_index_path
  end

  private

  def equipment_params
    params.require(:equipment).permit(
      :serial_number
    )
  end
end
