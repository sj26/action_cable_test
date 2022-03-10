class TestChannel < ApplicationCable::Channel
  periodically(every: 1.second) do
    transmit({count: SecureRandom.random_number(10), contents: ("foo bar baz " * SecureRandom.random_number(10))})
  end
end
