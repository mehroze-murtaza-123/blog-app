require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { Book.new(name: 'test book') }

  it 'is valid when name is present' do
    expect(subject).to be_valid
  end

  it 'is not valid when name is not present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
