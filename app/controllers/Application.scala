package controllers

import play.api._
import play.api.mvc._

class Application extends Controller {

  def index = Action {
    Ok(views.html.index("Your new application is ready."))
  }
  def registration = Action {
    Ok(views.html.registration())
  }
  def login = Action {
    Ok(views.html.login_form())
  }
  def personal = Action {
    Ok(views.html.personal_account())
  }

}