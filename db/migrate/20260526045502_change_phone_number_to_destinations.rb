class ChangePhoneNumberToDestinations < ActiveRecord::Migration[7.1]
  def change
    change_column :destinations, :phone_number, :string, null: false
  end
end
