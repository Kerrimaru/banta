require 'rails_helper'

RSpec.describe Room, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
   it { should validate_presence_of(:name) }
 end
 describe 'relations' do
   it { should have_many(:users) }
   it { should have_many(:messages) }
 end
end