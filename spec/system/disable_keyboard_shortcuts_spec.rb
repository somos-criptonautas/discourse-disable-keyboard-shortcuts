# frozen_string_literal: true

RSpec.describe "Disable keyboard shortcuts" do
  fab!(:current_user, :user)

  before do
    upload_theme_or_component
    sign_in(current_user)
  end

  it "does not open the shortcuts help on ?" do
    visit "/latest"
    page.send_keys("?")
    expect(page).to have_no_css(".keyboard-shortcuts-modal")
  end

  it "does not navigate on g-sequences" do
    visit "/latest"
    page.send_keys("g", "c")
    expect(page).to have_current_path("/latest")
  end

  it "keeps ctrl+alt+f opening search" do
    visit "/latest"
    page.send_keys(%i[control alt f])
    expect(page).to have_css(".search-menu .search-term__input")
  end
end
