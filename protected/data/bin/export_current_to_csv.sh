#!/bin/sh
#
# Export (or copy) 'current' data to csv/
#
# Schedule in /etc/crontab:
#   - rsync_current_files.sh
#   - export_current_to_csv.sh
#   - send_current_change_report.sh
#   - load_current_from_csv.sh
#

# customers
echo "export_current_to_csv: customers"
echo "  - using parts&vendors"
#echo "  - using scc\master\customer.csv"
#cp -af /home/maestro/scc/master/customer.csv /home/maestro/scc/csv/

# issues
echo "export_current_to_csv: issues"
echo "  - using scc\master\issue*.csv"
cp -af /home/maestro/scc/master/issue*.csv /home/maestro/scc/csv/

# projects
echo "export_current_to_csv: projects"
echo "  - using scc\master\project*.csv, activity*.csv"
cp -af /home/maestro/scc/master/project*.csv /home/maestro/scc/csv/
cp -af /home/maestro/scc/master/activity*.csv /home/maestro/scc/csv/

# stock
echo "export_current_to_csv: stock"
echo "  - using scc\master\stock*.csv"
cp /home/maestro/scc/master/stock*.csv /home/maestro/scc/csv/

# users
echo "export_current_to_csv: users"
echo "  - using scc\master\user*.csv"
cp -af /home/maestro/scc/master/user*.csv /home/maestro/scc/csv/

# export tables from parts&vendors
echo "export_current_to_csv: parts&vendors"
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb AL    > /home/maestro/scc/csv/pv_al.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb CNV   > /home/maestro/scc/csv/pv_cnv.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb COST  > /home/maestro/scc/csv/pv_cost.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb CU    > /home/maestro/scc/csv/pv_cu.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb CUR   > /home/maestro/scc/csv/pv_cur.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb FIL   > /home/maestro/scc/csv/pv_fil.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb HIST  > /home/maestro/scc/csv/pv_hist.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb HPREF > /home/maestro/scc/csv/pv_hpref.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb JOB   > /home/maestro/scc/csv/pv_job.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb LIN   > /home/maestro/scc/csv/pv_lin.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb LNK   > /home/maestro/scc/csv/pv_lnk.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb MF    > /home/maestro/scc/csv/pv_mf.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb MFR   > /home/maestro/scc/csv/pv_mfr.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb MFRPN > /home/maestro/scc/csv/pv_mfrpn.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb ORG   > /home/maestro/scc/csv/pv_org.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb PL    > /home/maestro/scc/csv/pv_pl.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb PLL   > /home/maestro/scc/csv/pv_pll.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb PN    > /home/maestro/scc/csv/pv_pn.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb PO    > /home/maestro/scc/csv/pv_po.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb POD   > /home/maestro/scc/csv/pv_pod.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb POM   > /home/maestro/scc/csv/pv_pom.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb RPX   > /home/maestro/scc/csv/pv_rpx.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb SHIP  > /home/maestro/scc/csv/pv_ship.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb SU    > /home/maestro/scc/csv/pv_su.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb TASK  > /home/maestro/scc/csv/pv_task.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb TYPE  > /home/maestro/scc/csv/pv_type.csv
/usr/local/bin/mdb-export -D "%F" /home/maestro/scc/pv/pv.mdb UN    > /home/maestro/scc/csv/pv_un.csv

exit 0
