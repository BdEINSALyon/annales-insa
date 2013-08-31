require 'spec_helper'

describe Page do
  it { should validate_presence_of(:content) }
  it { should belong_to(:document) }
end