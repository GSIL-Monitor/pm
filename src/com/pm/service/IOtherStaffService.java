package com.pm.service;

import java.util.List;

import com.common.beans.Pager;
import com.pm.domain.business.OtherStaff;
import com.pm.util.constant.LogConstant;
import com.pm.util.log.LogAnnotation;
import com.pm.vo.UserPermit;

public interface IOtherStaffService {
	
	@LogAnnotation(operation_type=LogConstant.OPERATION_INSERT,entity_type=LogConstant.OTHER_STAFF)
	public int addOtherStaff(OtherStaff otherStaff) ;
	

	@LogAnnotation(operation_type=LogConstant.OPERATION_UPDATE,entity_type=LogConstant.OTHER_STAFF)
	public int updateOtherStaff(OtherStaff otherStaff) ; 
	

	@LogAnnotation(operation_type=LogConstant.OPERATION_DELETE,entity_type=LogConstant.OTHER_STAFF)
	public void deleteOtherStaff(OtherStaff[] otherStaffs) ;
	
	
	public OtherStaff getOtherStaff(String staff_id) ;
	
	
	public boolean isExist(OtherStaff otherStaff);
	

	public Pager<OtherStaff> queryOtherStaff(OtherStaff otherStaff, UserPermit userPermit,Pager<OtherStaff> pager);
	
	
	public List<OtherStaff> queryOtherStaffByProjectSales(OtherStaff otherStaff,UserPermit userPermit);
	

}
