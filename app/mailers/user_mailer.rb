class UserMailer < ApplicationMailer
    default from: 'notificaciones@ucode.com'

  def comunicados_comentarios
    @user = params[:user]
    @url  = 'https://ucodefacilito.herokuapp.com/'
    mail(to: @user.email, subject: 'Tienes un nuevo comentario')
  end
end
