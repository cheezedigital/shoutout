require 'rails_helper'

RSpec.describe User, :type => :model do

    describe 'associations' do
      it { should have_many :hollers }
    end

    describe 'validations' do
      it { should validate_presence_of :first_name }
      it { should validate_presence_of :last_name }
      it { should validate_presence_of :mood }
    end

    describe '.by_mood', :focus do
      before do
        create(:user, first_name: 'Jusitn', mood: 'happy' )
        create(:user, first_name: 'Jason', mood: 'sad' )
        create(:user, first_name: 'Johnny', mood: 'thirsty' )
        create(:user, first_name: 'Jimmy', mood: 'drunk' )
      end
      it 'returns 1 user' do
        expect(User.by_mood('happy').count).to eq 1
      end
      it 'should not include justin' do
        expect(User.by_mood('sad')).to_not include 'Justin'
      end
    end

end
