require 'spec_helper'

describe 'Banks' do
  describe 'GET /banks' do
    it 'displays the New link' do
      visit banks_path
      page.should have_link('New')
    end
  end

  describe 'GET /banks/new' do
    it 'displays the Bank form', :js => true do
      visit banks_path
      click_link('New')
      page.should have_button('Create Bank')
    end
  end
end
