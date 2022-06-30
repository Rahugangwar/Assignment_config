#!/usr/bin/env bash

LOG_FILE=$"test-bed/log.txt"
DIAGNOSTICS_FILE=$"test-bed/diag.txt"
EMPLOYEE_DATA_FILE=$"test-bed/emp.txt"
DEPARTMENT_DATA_FILE=$"test-bed/dept.xls"
SALARY_DATA_FILE=$"test-bed/salary.xlsx"
LEAVE_DATA_FILE=$"test-bed/leave.xlsx"
FINAL_OUTPUT=$"test-bed/output.txt"

cargo run -- \
--log-file ${LOG_FILE} \
--diagnostics-log-file ${DIAGNOSTICS_FILE} \
--employee-data-file ${EMPLOYEE_DATA_FILE} \
--department-data-file ${DEPARTMENT_DATA_FILE} \
--salary-data-file ${SALARY_DATA_FILE} \
--leave-data-file ${LEAVE_DATA_FILE} \
--final-output-file ${FINAL_OUTPUT} \
