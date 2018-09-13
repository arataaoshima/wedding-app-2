class AddAllergyToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :allergy, :string
  end
end
