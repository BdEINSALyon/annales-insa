require 'spec_helper'

describe Document do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:scholar_year)}
  it { should validate_presence_of(:departement)}
  it { should validate_presence_of(:publication_year) }
  it { should validate_presence_of(:original_file) }

  it { should belong_to(:category)}
  it { should have_many(:pages)}

  it { should_not allow_value("PCI").for(:departement) }
  it { should allow_value("PC").for(:departement) }
  it { should ensure_inclusion_of(:departement).in_array(Document::DEPARTEMENT) }
end