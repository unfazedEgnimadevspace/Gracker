#All controllers that require user to be logged in should subclass from this parent controller
#Any changes made to this controller affects all the sub-controllers that inherit from it

class BaseController < ApplicationController
    before_action :authenticate_user!
end