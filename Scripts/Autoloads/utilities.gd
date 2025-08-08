extends Node

func string_to_json(separator, text):
	var parts = text.split(separator)
	var data = {}
	for part in parts:
		part = part.strip_edges() # remove spaces
		var kv = part.split(":")
		if kv.size() == 2:
			var key = kv[0].strip_edges()
			var value = kv[1].strip_edges()
		# Try converting to number if possible
			if value.is_valid_int():
				value = int(value)
			elif value.is_valid_float():
				value = float(value)
			data[key] = value
		elif kv.size() < 2:
			data[kv[0].strip_edges()] = null
	return data
