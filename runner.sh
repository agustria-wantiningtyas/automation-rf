#!/usr/bin/env bash
echo start running robot
echo run test running robot

robot -d E:/TYAS/app/automation-app/public/report/login2 E:/TYAS/app/automation-rf/Tests/Web/a_Login/login.robot
#pybot -d Results/Web Tests/Web/b_Home_page/a.topup_single/a.topup_single_valid.robot
#pybot -d Results/Web Tests/Web/b_Home_page/a.topup_single/b.topup_single_invalid.robot
#pybot -d Results/Web Tests/Web/b_Home_page/a.topup_single
#pybot -d Results/Web Tests/Web/b_Home_page/b.topup_bulk/a.topup_bulk_valid.robot
#pybot -d Results/Web Tests/Web/b_Home_page/c.topup_bulk_schedule/a.topup_bulk_schedule_valid.robot
#pybot -d Results/Web Tests/Web/b_Home_page/a.topup_single/test_database.robot

#python path/to/robot/ tests.robot

#robot -d Tests/Web/a_Login Tests/Web/a_Login/a.login.robot
#robot -d Tests/Web/Coupon_Search_by_Location Tests/Web/Coupon_Search_by_Location/coupon_search_by_location.robot