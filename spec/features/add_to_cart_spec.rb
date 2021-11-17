require 'rails_helper'

RSpec.feature "Can add a product to the cart", type: :feature, js: true do
  
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "Can click the 'add to cart' button and the cart count increases by 1" do
    # ACT
    visit root_path

    #VERIFY cart before click
    expect(page).to have_css('.navbar-default .navbar-nav > li > a', text: "My Cart (0)")

    page.all(".product .actions form")[0].click

    # commented out b/c it's for debugging only
    # save_screenshot

    # VERIFY cart after click
    expect(page).to have_css('.navbar-default .navbar-nav > li > a', text: "My Cart (1)")

  end

end
