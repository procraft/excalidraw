our-build:
	bin/build.sh

run-env:
	docker-compose -p excalidraw-env -f docker-compose.env.yml up --build -d
	@echo "Open: http://localhost:3000/#room=1,dkfnchddkfnchddkfnchd4"
