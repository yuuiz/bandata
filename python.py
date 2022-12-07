import json
def main():
	id = int(input('id>'))
	reason = input('reason>')
	f1 = open('users.json').read()
	with open('users.json', 'w') as f:
		j = json.loads(f1)
		print(f'old: {j}')
		j[id] = reason
		print(j)
		f.write(json.dumps(j))
	main()
main()