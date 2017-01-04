require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :student_id }
    it { is_expected.to validate_presence_of :amount }
    it { is_expected.to validate_presence_of :payment_date }
  end

  context 'with a value less than 0' do
    subject { build_stubbed :payment, amount: 0 }

    it { is_expected.to_not be_valid }
  end

  describe 'database columns' do
    it { should have_db_column :student_id }
    it { should have_db_column :amount }
    it { should have_db_column :payment_date }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end
end
