our-build:
	bin/build.sh

run-env:
	docker-compose -p excalidraw-env -f docker-compose.env.yml up --build -d
	@echo "Open: http://localhost:3000/1#config.excalidrawKey=%22dkfnchddkfnchddkfnchd4%22"
