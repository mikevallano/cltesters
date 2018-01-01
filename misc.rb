
ct_hash = cts.each_with_object({}) do |ct, object|
  object[ct.procedure_code] = ct.name
end
