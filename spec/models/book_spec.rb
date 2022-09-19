require 'rails_helper'

RSpec.describe Book, type: :model do  
  it {is_expected.to validate_presence_of(:title) }
  it {is_expected.to validate_presence_of(:category) }
  it {is_expected.to validate_presence_of(:author) }
end
