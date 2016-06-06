class Assignment < ActiveRecord::Base
  belongs_to :space_traveler
  belongs_to :mission

  enum role: {
    :commander               => "Commander",
    :module_commander        => "Module Commander",
    :command_pilot           => "Command Pilot",
    :pilot                   => "Pilot",
    :second_pilot            => "Second Pilot",
    :module_pilot            => "Module Pilot",
    :flight_engineer         => "Flight Engineer",
    :science_officer         => "Science Officer",
    :mission_specialist      => "Mission Specialist",
    :scientist               => "Scientist",
    :doctor                  => "Doctor",
    :payload_commander       => "Payload Commander",
    :payload_specialist      => "Payload Specialist",
    :spaceflight_participant => "Spaceflight Participant",
  }

  validates :role, inclusion: {in: roles.keys}
end
