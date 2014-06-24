require '../../../test-framework'
require '../src/getter.rb'

config = { :files => { :mode => 0x777 }, :name => "config" }


describe 'Getter' do
  it 'should return proper value' do
    Test.expect config.get_value( 0x0, :files, :mode ) == 0x777, 'should equal 0x777'
    Test.expect config.get_value( "", :name ) == "config", 'should equal "config"'
  end
  
  it 'should return default value' do
    Test.expect config.get_value( 80, :port ) == 80, 'should equal 80'
    Test.expect config.get_value( "cfg", :files, :extension ) == "cfg", 'should equal "cfg"'
  end
end