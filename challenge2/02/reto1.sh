#!/bin/bash

# step1
rm -rf new_dir
mkdir new_dir
touch new_dir/archiv{1..9}

# step2
chmod a-rwx new_dir/archiv*

# step3
chmod u=rwx,go= new_dir/archiv1
chmod u=rw,go= new_dir/archiv2
chmod a=rwx new_dir/archiv3
chmod u=rwx,g=rw,o=r new_dir/archiv4
chmod u=rwx,g=r,o= new_dir/archiv5
chmod u=rx,g=rw,o=r new_dir/archiv6
chmod u=r,g=,o=x new_dir/archiv7
chmod u=rw,g=r,o=r new_dir/archiv8
chmod u=rw,g=rw,o=r new_dir/archiv9
ls -lh new_dir/

# step4

chmod o+r new_dir/archiv1
chmod u-w new_dir/archiv2
chmod a-x new_dir/archiv3
chmod go-r new_dir/archiv4
chmod g-r,o+wx new_dir/archiv5
chmod u+w,o-r new_dir/archiv6
chmod u+w,g+rw,o+r new_dir/archiv7
chmod u-rw,g-r new_dir/archiv8
chmod u+rw,g+rw,o+r new_dir/archiv9

ls -lh new_dir/

