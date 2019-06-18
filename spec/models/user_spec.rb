require 'rails_helper'

# Tests related to user model
RSpec.describe User, type: :model do

    # required tests
    context 'required tests' do

        # Tests itself

        it 'ensure (nome) to be required' do
            user = build(:user, nome: nil)
            expect(user).to_not be_valid
        end

        it 'ensure (email) to be required' do
            user = build(:user, email: nil)
            expect(user).to_not be_valid
        end

        it 'ensure (instituto) to be required' do
            user = build(:user, instituto: nil)
            expect(user).to_not be_valid
        end

        it 'ensure (curso) to be required' do
            user = build(:user, curso: nil)
            expect(user).to_not be_valid
        end

        it 'ensure (info) to be required' do
            user = build(:user, info: nil)
            expect(user).to_not be_valid
        end

        it 'ensure (password) to be required' do
            user = build(:user, password: nil)
            expect(user).to_not be_valid
        end

    end

    # Validation tests
    context 'validation tests' do

        it 'ensure (email) to be lower case' do
            # Create new object using user method
            user = build(:user, email: "ERRO@gmail.com")
            # Expected result
            expect(user).to be_valid
        end

        it 'ensure (nome) to be long_min' do
            user = build(:user, nome: "pr")
            expect(user).to_not be_valid
        end

        it 'ensure (password) to be long_min' do
            user = build(:user, password: "123")
            expect(user).to_not be_valid
        end

        it 'ensure (email) uniqueness' do
            # First we create a user in DB
            user1 = create(:user)
            # Try to build second one, checking uniqness
            user2 = build(:user)
            expect(user2).to_not be_valid
        end

        it 'expect sucess when everything is valid' do
            user = create(:user)
            expect(user).to be_valid
        end
    end



end
