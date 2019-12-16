./bjam headers

./bjam \
#	link=static \
    threading=multi \
#	runtime-link=shared  \
#	link=shared \
	abi=o32 address-model=32 architecture=arm binary-format=elf \
	stage -d+2 \
	--hash variant=release cxxflags=-fPIC cxxflags=-std=c++11 \
	--with-system \
	--with-atomic \
	--with-thread \
	--with-chrono \
	--with-date_time  \
	--with-filesystem \
	--with-locale    \
	--with-program_options \
	--with-regex     \
	--with-iostreams \
	--with-serialization \
	--with-container \
	--with-exception \
	--with-coroutine \
	--with-context -a \
	--with-math \
	--with-random \
	--with-signals \
	--with-timer \
	--with-locale
