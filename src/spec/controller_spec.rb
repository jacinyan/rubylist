require_relative '../lib/rubylist'
require_relative 'list_dir'
require_relative 'list_file'
#testing if menu pops up whenever the app is launched

RSpec.describe Home do 
    describe 'Controller' do
      describe '#menu' do
        it 'should return the list flies' do
            APP_ROOT = File.expand_path(File.dirname(__FILE__))
            @@dirname = 'td_lists'
            @@filename = ToDo::ListDir.new
            @filepath = File.join(APP_ROOT, @@dirname, @@filename)
            expect(ToDo::ListDir.new.menu).to eq('1. ')
        end
      end
    end
end