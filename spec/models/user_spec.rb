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

    describe '.by_first_name' do
      before do
        create(:user, first_name: 'Justin', last_name: 'Veirs' )
        create(:user, first_name: 'Jimmy', last_name: 'Veirs' )
      end
    end

    describe '.mood', :focus do
      before do
        create(:user, first_name: 'Jusitn', last_name: 'Veirs', mood: 'happy' )
        create(:user, first_name: 'Justin', last_name: 'Veirs', mood: 'sad' )
        create(:user, first_name: 'Justin', last_name: 'Veirs', mood: 'thirsty' )
        create(:user, first_name: 'Justin', last_name: 'Veirs', mood: 'drunk' )
      end
      it 'returns mood when user finds mood' do
        expect(User.mood('sad')).to be_mood
      end
    end

end
