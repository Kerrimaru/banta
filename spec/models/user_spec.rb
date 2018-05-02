require 'rails_helper'

RSpec.describe User, type: :model do
 describe 'validations' do
   it { should validate_presence_of(:email) }
   it { should validate_presence_of(:password) }
   it { should validate_presence_of(:email) }
 end

 describe 'relations' do
   it { should have_many(:messages) }
   it { should have_and_belong_to_many(:rooms) }
 end
end




