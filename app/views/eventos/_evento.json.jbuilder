json.extract! evento, :id, :dataEvento, :horaInicio, :horaFim, :latitude, :longitude, :created_at, :updated_at
json.url evento_url(evento, format: :json)
