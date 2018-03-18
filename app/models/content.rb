class Content < ActiveRecord::Base
    belongs_to :user 

    has_many :sales

    has_attached_file :cover, styles: { medium: "300x>", thumb: "100x>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
    message: "Sono supportate solo immagini"


   has_attached_file :allegato 
   validates_attachment_content_type :allegato,:content_type => [ /^image\/(png|gif|jpeg)/,'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation', 'application/pdf', 'application/msexcel','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','audio/mpeg', 'audio/mp3' ],
   message: "formato non supportato"

   validates :titolo, :descrizione, :prezzo, presence: true
   validates :prezzo, numericality: { greater_than: 0.49 }
   validates :cover, attachment_presence: true
   validates :allegato, attachment_presence: true

   extend FriendlyId
   friendly_id :titolo, use: :slugged
end
