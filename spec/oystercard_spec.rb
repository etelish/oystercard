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

it "updates whether oystercard is in journey" do
  expect(subject.in_journey?).to eq(false)
end

it "touches in to start a journey" do
  subject.top_up(5)
  expect(subject.touch_in.in_journey?).to eq(true)
end

it "touches out to end a journey" do
  expect(subject.touch_in.touch_out.in_journey?).to eq(false)
end

it "raises error if insufficient funds" do
  expect{ subject.touch_in }.to raise_error("insufficient funds")
end

end
