require 'spec_helper'

describe IDSRulesParser do

	it { IDSRulesParser.new.should_not be_nil }

	describe "processing actions" do
		before do
      @content = File.read(File.expand_path(File.join(File.dirname(__FILE__),"..","test","rules","test2.rules")))
			@ids_r = IDSRulesParser.new
    end
		it { @content.should_not be_nil }
		describe ".parse" do
			it { @ids_r.parse(@content).should_not be_nil }
	  end
		describe ".process" do
			it { @ids_r.parse(@content).process.should_not be_empty }
    end
  end
end
