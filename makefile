

exec:
	./bin/exec.bash

clean:
	./bin/clean.bash

data: a b c d e

seed:
	go run ./admin_toystore.go 3000

a:
	curl -X POST -F key=a -F data=1 localhost:3000/api
b:
	curl -X POST -F key=b -F data=2 localhost:3000/api
c:
	curl -X POST -F key=c -F data=3 localhost:3000/api
d:
	curl -X POST -F key=d -F data=4 localhost:3000/api
e:
	curl -X POST -F key=e -F data=5 localhost:3000/api


start: exec
stop: clean
