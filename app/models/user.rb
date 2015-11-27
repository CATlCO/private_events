class User < ActiveRecord::Base
	has_many :events, foreign_key: "creator_id"
	has_and_belongs_to_many :attended_events, class_name: "Event", foreign_key: "attendee_id"
end
