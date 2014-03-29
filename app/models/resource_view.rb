class ResourceView < SierraTable

	self.table_name = 'resource_view'
	self.primary_key = 'id'

	def resource_record()
		ResourceRecord.find(self.id)
	end

	def var_fields()
		VarfieldView.record('e', self.record_num)
	end
end