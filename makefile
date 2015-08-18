

exec:
	./bin/exec.bash

clean:
	./bin/clean.bash

start: exec
stop: clean
