require 'spec_helper'

describe Festival do
 
 	let(:festival) { FactoryGirl.create(:festival) }

 	subject { festival }

 	it { should be_valid }

 	it { should respond_to(:name) }
  	it { should respond_to(:lineup) }
  	it { should respond_to(:logo) }
  	it { should respond_to(:details) }
  	it { should respond_to(:date) }
  	it { should respond_to(:camping) }
  	its(:name) { should == "Electric Daisy Carnival NYC" }

end
