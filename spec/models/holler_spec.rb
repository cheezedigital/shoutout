require 'rails_helper'

RSpec.describe Holler, :type => :model do

    describe 'validations' do
      it { should validate_presence_of :message }
      it { should validate_presence_of :user_id }
    end

end
