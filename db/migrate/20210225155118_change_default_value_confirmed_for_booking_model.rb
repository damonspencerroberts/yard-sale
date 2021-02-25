class ChangeDefaultValueConfirmedForBookingModel < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :confirmed, nil
  end
end
