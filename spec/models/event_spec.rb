require 'rails_helper'

RSpec.describe Event, type: :model do

    # required tests
    context 'required tests' do

        # Tests itself
        it 'ensure (nome) to be required' do
            event = build(:event, nome: nil)
            expect(event).to_not be_valid
        end

        it 'ensure (local) to be required' do
            event = build(:event, local: nil)
            expect(event).to_not be_valid
        end

        it 'ensure (date) to be required' do
            event = build(:event, date: nil)
            expect(event).to_not be_valid
        end

        it 'ensure (time) to be required' do
            event = build(:event, time: nil)
            expect(event).to_not be_valid
        end

    end

    # Validation tests
    context 'validation tests' do

        it 'ensure (nome) to be long_min' do
            event = build(:event, nome: "ev")
            expect(event).to_not be_valid
        end

    end
end
