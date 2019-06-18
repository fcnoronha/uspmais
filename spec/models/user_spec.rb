require 'rails_helper'

# Fazer text para colocar email em lower case

# Tests related to user model
RSpec.describe User, type: :model do

    # Validation tests
    context 'validation tests' do

        # Tests itself

        it 'ensure email to be lower case' do
            user = create(:user, email: "ERRO@gmail.com")

            expect(user.email).to eq "erro@gmail.com"
        end

    end

end
