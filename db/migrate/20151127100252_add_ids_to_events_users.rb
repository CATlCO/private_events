class AddIdsToEventsUsers < ActiveRecord::Migration
  def change
    add_column :events_users, :attendee_id, :integer
    add_column :events_users, :attended_event_id, :integer
  end
end
