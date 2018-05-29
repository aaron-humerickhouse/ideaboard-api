require 'pact/provider/rspec'

Pact.service_provider 'Pact Provider' do
  honours_pact_with 'Pact Consumer' do
    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/bethesque/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.
    pact_uri 'http://localhost:9292/pacts/provider/Pact%20Provider/consumer/Pact%20Consumer/latest.json'
  end
end

Pact.provider_states_for "Pact Consumer" do

  provider_state "i have a list of ideas" do
    set_up do
      # Your set up code goes here
    end
  end

  provider_state "i have a single idea" do
    set_up do
      # Your set up code goes here
    end
  end
end
