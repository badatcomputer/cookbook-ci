require_relative '../spec_helper'

require 'coveralls'
Coveralls.wear!

describe 'motd::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge('motd::default') }


  it 'does something' do
    stub_data_bag_item("global-properties", "company").and_return({'id' => 'company', 'name' => 'Ouroboros'})
    expect(chef_run).to render_file('/etc/motd.tail')
    #expect(chef_run).to create_file_with_content('/etc/motd.tail', 'This Server is the Property of Ouroboros')
  end
end
