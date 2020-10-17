require_relative '../lib/rubylist/list_dir'
require_relative '../lib/rubylist'
# testing if adding lists files is functioning

RSpec.describe ToDo do 
  describe 'ListDir' do

    describe '.dirname' do
      it 'should return a directory file name' do
        @@dirname = 'some_lists'
        expect(ToDo::ListDir.dirname).to eq('some_lists')
      end
    end

    describe '#add' do
        it 'should return repsonse.txt' do
          APP_ROOT = File.expand_path(File.dirname(__FILE__))
          @dirpath = File.join(APP_ROOT, @@dirname)
          response = "response"
          name = response.downcase.strip
          name << ".txt" unless name.end_with?('.txt')
          name
          expect(ToDo::ListDir.new.add).to eq('some_lists/response.txt')
        end
    end

  end
end