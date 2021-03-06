package com.pm.util.constant;



/**
 * 实体类型
 * @author zhonglh
 *
 */
public enum EnumEntityType {
	
	USER("user.entity","user"),
	DEPT("dept.entity","dept"),
	DEPARTOBJECTIVE("dept.objective","dept.objective"),
	ROLE("role.entity","role"),
	LOG("log.entity","log"),
	

	CLIENT("client.entity","client"),
	INSURANCE_GRADE("insurance.grade.entity","insurance.grade"),
	OTHER_STAFF("other.staff.entity","other.staff"),
	STAFF_COST("staff.cost.entity","staff.cost"),
	PROJECT("project.entity","project"),
	CONTRACT("contract","contract"),
	RECRUITINFO("recruitinfo","recruitinfo"),
	POTENTIALCLIENT("potentialclient","potentialclient"),
	POTENTIALCLIENT_FOLLWUP("potentialclient.followup","potentialclient.followup"),
	
	
	WORK_ATTENDANCE("work.attendance.entity","work.attendance"),
	SALARY("salary.entity","salary"),
	PROJECT_STAFF_COST("project.staff.cost.entity","project.staff.cost"),
	PROJECT_EXPEND("project.expend.entity","project.expend"),
	REIMBURSE_COSTS("reimburse.costs.entity","reimburse.costs"),


	MONTHLY_STATEMENT("monthly.statement.entity","monthly.statement"),
	INVOICE("invoice.entity","invoice"),
	RECEIVED_PAYMENT("received.payment.entity","received.payment"),
	
	REIMBURSE_ITEM("reimburse.item.entity","reimburse.item"),
	ACCOUNTS_TYPE("accounts.type.entity","accounts.type"),
	DICDATA("dicdata","dicdata"),
	
	

	DEPART_COSTS("depart.costs.entity","depart.costs"),
	
	PERSONNELMONTHLYBASE("personnel.monthly.entity","personnel.monthly"),

	INSURANCE("insurance.entity","insurance"),
	

	PARAM("set.param","set.param"),
	PARAMEX("set.paramex","set.paramex"),
	
	
	

	;

	private String key;

	private String i18ncode;

	private EnumEntityType(String key, String i18ncode) {
		this.i18ncode = i18ncode;
		this.key = key;
	}

	public String getKey() {
		return key;
	}

	public String getI18ncode() {
		return i18ncode;
	}

}
