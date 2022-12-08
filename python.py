import json
def main():
	id = int(input('id>'))
	reason = input('reason>')
	f1 = open('users.json').read()
	with open('users.json', 'w') as f:
		j = json.loads(f1)
		j[id] = reason
		if j[id] == reason:
			print('updated json')
		f.write(json.dumps(j))
	main()
main()