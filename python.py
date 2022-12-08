import json
def is_json_key_present(json, key):
    try:
        buf = json[key]
    except KeyError:
        return False

    return True
def main():
	print('version 2.01')
	id = int(input('id>'))
	reason = input('reason>')
	f1 = open('users.json').read()
	with open('users.json', 'w') as f:
		j = json.loads(f1)
		if is_json_key_present(j, id):
			j[id] = reason
			if j[id] == reason:
				print('updated json')
			f.write(json.dumps(j))
		else:
			print('already existed')
			f.write(f1)
		
	main()
main()