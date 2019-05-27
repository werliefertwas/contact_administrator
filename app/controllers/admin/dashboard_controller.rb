class Admin::DashboardController < ApplicationController
  def contacts
    @contacts = Contact.all
  end
end