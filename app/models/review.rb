class Review < ApplicationRecord
    
has_one :client, class_name: "client", foreign_key: "client_id"

has_one :freelancer, class_name: "freelancer", foreign_key: "freelancer_id"

end
