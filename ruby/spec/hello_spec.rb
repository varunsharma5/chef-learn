require_relative '../hello'

RSpec.describe Greetings do
  context "#greeetings" do
    it { expect(Greetings.say_hello).to eql 'Hello !' }
  end
end
