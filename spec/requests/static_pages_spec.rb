require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end


describe "Static pages" do

  subject{page}
  describe "Home page" do
      before { visit root_path }

      it { should have_content('Sample App') }
      it { should have_title(full_title('')) }
    end
  
  describe "Help page" do

      it "should have the content 'Help'" do
        visit  help_path
        expect(page).to have_content('help')
      end
      it "should have the right title" do
        visit help_path
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      end
    end

    describe "About page" do

        it "should have the content 'About Us'" do
          visit about_path
          expect(page).to have_content('About Us')
        end
        it "should have the right title" do
          visit about_path
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
        end
    end

    describe  "Contact page" do
      it "should have the content 'Contact'" do
        visit contact_path
        expect(page).to have_content('Contact')
      end
      it "should have the title 'Contact'" do
        visit contact_path
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
      end
    end
    

end