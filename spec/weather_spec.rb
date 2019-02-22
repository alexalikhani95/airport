require 'weather'
require 'airport'

describe Weather do
  it 'returns 1 or 2' do
    expect(subject.stormy?).to be(1).or be(2)
  end
end
