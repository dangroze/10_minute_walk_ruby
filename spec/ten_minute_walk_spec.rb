require 'ten_minute_walk'

RSpec.describe 'is_valid?' do

  it 'returns false when walk is less than 10 minutes' do
    expect(is_valid(['w','e','s','n'])).to eq(false)
  end

  it 'returns false when walk is more than 10 minutes' do
    expect(is_valid(['w','e','s','n','w','e','s','n''w','e','s','n'])).to eq(false)
  end
  
end