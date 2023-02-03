# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :view do
  before(:each) do
    @users = FactoryBot.create_list(:user, 2)
  end

  it 'renders a list of users' do
    render
    # assert_select "tr>td", text: "Name".to_s, count: 2
    # assert_select "tr>td", text: "email".to_s, count: 2
    assert_select 'tr>td', text: 'restricted_user'.to_s, count: 2
    # assert_select "tr>td", text: "Password".to_s, count: 2
    # assert_select "tr>td", text: "Password".to_s, count: 2
  end
end
