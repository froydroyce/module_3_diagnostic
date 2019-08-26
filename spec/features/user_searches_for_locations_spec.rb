require 'rails_helper'

describe 'As a user' do
  describe 'When I visit "/"' do
    describe 'and I fill in the search form with 80203 and I click "Locate"' do
      it "Then I should see a list of the 10 closest stations within 6 miles sorted by distance\n
      And the stations should be limited to Electric and Propane\n
      And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times" do
        visit root_path

        fill_in :q, with: 80203
        click_button 'Locate'

        expect(current_path).to eq(search_path)

        expect(page).to have_css('.stations')

        within(first(".stations")) do
          expect(page).to have_content("UDR")
          expect(page).to have_content("Address: 800 Acoma St")
          expect(page).to have_content("Fuel Type: ELEC")
          expect(page).to have_content("Distance: 0.31 miles away")
          expect(page).to have_content("24 hours daily")
        end

        within(".stations:last-child") do
          expect(page).to have_content("UDR")
          expect(page).to have_content("Address: 800 Acoma St")
          expect(page).to have_content("Fuel Type: ELEC")
          expect(page).to have_content("Distance: 0.31 miles away")
          expect(page).to have_content("24 hours daily")
        end
      end
    end
  end
end
