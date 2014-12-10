class Match < ActiveRecord::Base
	attr_accessible :place, :team_id_1, :team_id_2, :created_at, :referee, :date, :time

	def fecha(id)
		match = Match.find(id)
		dia = match.date.day
		mes = match.date.month
		anio = match.date.year
		if mes == 1
			mes = "Enero"
		end
		if mes == 2
			mes = "Febrero"
		end
		if mes == 3
			mes = "Marzo"
		end
		if mes == 4
			mes = "Abril"
		end
		if mes == 5
			mes = "Mayo"
		end
		if mes == 6
			mes = "Junio"
		end
		if mes == 7
			mes = "Julio"
		end
		if mes == 8
			mes = "Agosto"
		end
		if mes == 9
			mes = "Septiembre"
		end
		if mes == 10
			mes = "Octubre"
		end
		if mes == 11
			mes = "Noviembre"
		end
		if mes == 12
			mes = "Diciembre"
		end
		fecha = dia.to_s+ " de "+mes.to_s+", "+anio.to_s
		return fecha
	end

	def hora(id)
		match = Match.find(id)
		hora = match.time.hour
		minuto = match.time.min
		if minuto == 0
			res = hora.to_s+":"+minuto.to_s+"0"
		else
			res = hora.to_s+":"+minuto.to_s
		end
		return res
	end

	def teams
		Team.find(self.team_id_1).name+" vs "+Team.find(self.team_id_2).name
	end
end
