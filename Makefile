##
##  The author disclaims copyright to this source code.  In place of
##  a legal notice, here is a blessing:
##
##    May you do good and not evil.
##    May you find forgiveness for yourself and forgive others.
##    May you share freely, not taking more than you give.
##

build:
	gprbuild -k -p statsock.gpr

build-test:
	gprbuild -k -p statsock_test.gpr

clean:
	gprclean -q statsock.gpr

setup:
	tools/create-setup-adb.sh
