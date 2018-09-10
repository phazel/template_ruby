require_relative "../app"

RSpec.describe App do
  subject { described_class.new }

  it 'says hello' do
    expect(subject.message).to eq "hello"
  end
end
