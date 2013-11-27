require 'spec_helper'
require 'attr_validator'

describe AttrValidator::ValidationRules::InclusionValidationRule do

  describe "#new" do
    it "should raise error if validation attributes are invalid" do
      lambda do
        AttrValidator::ValidationRules::InclusionValidationRule.new(wrong_option: false)
      end.should raise_error("validation rule has invalid options: {:wrong_option=>false}")
    end
  end

end