class RestosController < ApplicationController

  def index
    @restos = Resto.all
  end

  def show
    @resto = Resto.find(params[:id])
  end

  def new
    @resto = Resto.new
    @resto.picture_url = "http://3.bp.blogspot.com/_ljewrW8Rm88/TNJ8KTrg9nI/AAAAAAAAEWE/HBEnCtaxzCY/s1600/restaurant+sous-marin+2.jpg"
  end

  def create
    resto = Resto.create(resto_params)
    redirect_to resto_path(resto)
  end

  def destroy
    Resto.find(params[:id]).destroy
    redirect_to restos_path
  end

  private

  def resto_params
    params.require(:resto).permit(:name, :picture_url, :description)
  end

end
