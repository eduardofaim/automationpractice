require 'faker'
require 'cpf_faker'

module LoadData
	class NewUser
		def register_new_user_data
			return {
				:email => Faker::Internet.email,  
				}	
        end
    end
end