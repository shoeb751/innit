ratpoison -c "echo Initialising Startup"

sleep 5

ratposion -c "echo Setting up audio controls"
rpws 6
ratpoison -c hsplit
ratpoison -c vsplit
sleep 1
ratpoison -c 'exec pavucontrol'
sleep 1
ratpoison -c 'dedicate 1'


ratposion -c "echo Setting up Terminal"

rpws 2
sleep 1
ratpoison -c 'exec terminator -p home'
sleep 1

ratposion -c "echo Setting up Main Browser"

rpws 1
sleep 1
ratpoison -c 'exec chromium'

ratposion -c "echo Initialisation Complete"
