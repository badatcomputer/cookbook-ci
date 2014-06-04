require_relative '../spec_helper'

describe 'tmux::default' do
  # Use an explicit subject
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs the tmux package' do
    expect(chef_run).to install_package('tmux')
  end

  it 'creates the tmux.conf file' do
    expect(chef_run).to render_file('/etc/tmux.conf')
    #expect(chef_run).to create_file('/etc/tmux.conf').with_content('set -g prefix C-a')
  end

end
