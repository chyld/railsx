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

  describe 'JS cancel_form()' do
    it 'removes the Bank form', :js => true do
      visit banks_path
      click_link('New')
      click_link('Cancel')
      page.should_not have_button('Create Bank')
    end
  end

  describe 'POST /banks' do
    it 'creates a bank', :js => true do
      visit banks_path
      click_link('New')
      fill_in('Name', :with => 'BoA')
      click_button('Create Bank')
      page.should have_css('#banks li', :count => 1)
    end
  end
end
