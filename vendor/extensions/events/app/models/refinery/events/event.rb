module Refinery
  module Events
    class Event < Refinery::Core::BaseModel

      self.table_name = 'refinery_events'

      attr_accessible :title, :date, :photo_id, :blurb, :position



      acts_as_indexed :fields => [:title, :blurb]

      validates :title, :presence => true, :uniqueness => true



      belongs_to :photo, :class_name => '::Refinery::Image'


    end
  end
end
