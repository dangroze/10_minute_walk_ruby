require 'ten_minute_walk'

RSpec.describe 'is_valid?' do

  it 'returns false when walk is less than 10 minutes' do
    expect(is_valid?(['w','e','s','n'])).to eq(false)
  end

  it 'returns false when walk is more than 10 minutes' do
    expect(is_valid?(['w','e','s','n','w','e','s','n''w','e','s','n'])).to eq(false)
  end

  it 'returns true when you come back to starting point' do
    expect(is_valid?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq(true)
  end

  it 'returns false when you do not come back to starting point' do
    expect(is_valid?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to eq(false)
  end

end