require './lib/oystercard.rb'

describe Oystercard do
  it "has a balance of zero" do
  expect(subject.balance).to eq(0)
  end

  it 'allows balance top_up' do
  expect(subject).to respond_to(:top_up).with(1).argument
  end

  it "has a limit to how much you can top up" do
  expect { subject.top_up(Oystercard::LIMIT + 1) }.to raise_error("Oystercard has reached #{Oystercard::LIMIT}")
  end

it "deducts money from oystercard" do
  expect(subject).to respond_to(:deduct).with(1).argument
 end
end
