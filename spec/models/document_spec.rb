require 'spec_helper'

describe Document do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:scholar_year)}
  it { should validate_presence_of(:departement)}
  it { should validate_presence_of(:publication_year) }
  it { should validate_presence_of(:original_file) }

  it { should belong_to(:category)}
  it { should have_many(:pages).with_dependent(:destroy) }
end