FactoryGirl.define do
	factory :ticket do |ticket|
		ticket.title "A Ticket"
		ticket.description "Just a simple ticket example"
		ticket.user { |u| u.association{:user}}
		ticket.project { |p| p.project{:project}}
	end
	
end