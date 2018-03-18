class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

                    #ci sono le 7 azioni principali: index, show,  new edit create update e destroy. Che richiamano alle 4 azioni principali del CRUD. La prima è l'index. La pagina view dell'index la troviamo in views. Apriamo il controller e l'index in due finestre
  def index                              
    @contents = Content.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 4 ) #modificato per mettere i contenuti in ordine dall'ultimo al più vecchio, DESC sta per decrescente, cioè dal più nuovo al più vecchio
  end
                    
  def show
  end

        
  def new           #funzione modificata per aggiungere l'user id                       al content
    @content = current_user.contents.build
  end

  
  def edit
  end


  def create            #funzione modificata per aggiungere l'user                          id
    @content = current_user.contents.build(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Il tuo contenuto è stato creato correttamente.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @content, notice: 'Contenuto modificato correttamente.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Contenuto eliminato.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.friendly.find(params[:id])
    end
    
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:titolo, :descrizione, :prezzo, :cover, :allegato)
    end
    
    def check_user
        if current_user != @content.user
            redirect_to root_url, alert: "non hai accesso a questa pagina"
        end
    end
end
