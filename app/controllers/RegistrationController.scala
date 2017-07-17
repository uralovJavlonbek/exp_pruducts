package controllers

import play.api.mvc.{Action, Controller}

/**
  * Created by lawie on 7/17/17.
  */
object RegistrationController{
  case class RegistrationFields
  (
    direction: String,
    products: Seq[String],
    clientFullName: String,
    clientEmail: String,
    clientPhone: String,
    clientLogin: String,
    clientPassword: String,
    clientPS: String,
    clientPN: Int,
    clientAddress: String,
    clientAccount: Long
  )
}
class RegistrationController extends Controller{

  def registration = Action {
    Ok(views.html.login_form())
  }
}
