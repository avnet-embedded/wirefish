build:
	npm run build
	cd src-tauri && cargo build --release --features tauri/custom-protocol --features tauri/devtools

run:
	sudo setcap cap_net_raw,cap_net_admin+eip ./src-tauri/target/release/wirefish
	./src-tauri/target/release/wirefish

clean:
	rm -rf build
	rm -rf src-tauri/target
