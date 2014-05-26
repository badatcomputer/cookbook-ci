require 'chefspec'

describe 'motd::default' do
  let(:chef_run) { ChefSpec::Runner.new }
  it 'should do create a motd file with the company name' do
    pending 'Your recipe examples go here.'
  end

  before do
    stub_data_bag('users').and_return([])
  end
end
