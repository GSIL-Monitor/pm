<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>

<div class="pageContent">
	<form method="post" action="${webroot }/WorkAttendanceGroupAction.do?method=${next_operation}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="56">			

	
				<input type="hidden"  id="checked"  name="checked" value="${checked }"/>

			<p>
				<label>考勤月份：</label>
				
				<label>${workAttendance1.attendance_month } <input type="hidden" name="attendance_month" value="${workAttendance1.attendance_month }" /></label>
			</p>	
			
			<p>
				<label>项目名称：</label>
				<input type="hidden"   name="project_id" value="${workAttendance1.project_id }"/>
				<input name="project_name" type="hidden" value="${workAttendance1.project_name }"  />
				<label>${workAttendance1.project_name }</label>
			</p>
			
						
			
			<div class="divider"></div>
			
			<table class="list nowrap itemUpdate" width="1500" >
				<thead>
					<tr>
					
						<th width="40" nowrap>序号</th>		
						<th width="160" >姓名</th>
						<th width="80" >工作日天数</th>						
						<th width="140" >实际工作天数</th>
						<th width="80" >法定假日</th>
						<th width="80" >倒休天数</th>
						<th width="80" >年假天数</th>
						<th width="80" >出差天数</th>
						<th width="80" >事假天数</th>
						<th width="80" >病假天数</th>
						<th width="80" >旷工天数</th>
						<th width="80" >迟到天数</th>
						<th width="120" >周末加班天数</th>
						<th width="130" >日常加班(小时)</th>
						<th width="200" >备注</th>
					</tr>
				</thead>
				<tbody>					
					<c:forEach var="workAttendance"  varStatus="status1" items="${list}">
					<tr>
						<td>
							<input type="hidden" id="id" name="id" <c:if test="${workAttendance.operationType=='2' && reCompute==null }">value="0"</c:if><c:if test="${workAttendance.operationType=='2' && reCompute=='1' }">value="${status1.index + 1 }"</c:if><c:if test="${workAttendance.operationType!='2' }">value="${status1.index + 1 }"</c:if>  />
							<input type="hidden" name="attendance_id${status1.index + 1 }" value="${workAttendance.attendance_id}"  />	
							<input type="hidden" name="staff_id${status1.index + 1 }" value="${workAttendance.staff_id }"/>						
							<input type="hidden" name="staff_name${status1.index + 1 }" value="${workAttendance.staff_name }" />					
							<input type="hidden" name="operationType${status1.index + 1 }" value="${workAttendance.operationType }" />
							<input type="hidden"   name="technical_cost${status1.index + 1 }" value='<fmt:formatNumber value="${workAttendance.technical_cost }" type="number" pattern="####0.00#"/>' />			
							<input type="hidden" name="client_dept${status1.index + 1 }" value="${workAttendance.client_dept }" />
							${status1.index + 1 }							
						</td>
						<td title="${workAttendance.staff_no }">${workAttendance.staff_name }</td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="should_work_days${status1.index + 1 }" class="number required" value="${workAttendance.should_work_days }" onchange="javaScript:jsycq(${totayDays },this,'legal_holidays${status1.index + 1 }')"/></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="work_days${status1.index + 1 }" class="number required" value="${workAttendance.work_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="legal_holidays${status1.index + 1 }" class="number required" value="${workAttendance.legal_holidays }" onchange="javaScript:jsycq(${totayDays },this,'should_work_days${status1.index + 1 }')"/></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="swopped_holidays${status1.index + 1 }" class="number required" value="${workAttendance.swopped_holidays }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="annual_leave_days${status1.index + 1 }" class="number required" value="${workAttendance.annual_leave_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="business_trip_days${status1.index + 1 }" class="number required" value="${workAttendance.business_trip_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="personal_leave_days${status1.index + 1 }" class="number required" value="${workAttendance.personal_leave_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="sick_leave_days${status1.index + 1 }" class="number required" value="${workAttendance.sick_leave_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="neglect_work_days${status1.index + 1 }" class="number required" value="${workAttendance.neglect_work_days }" /></td>
						<td><input type="text" size="5" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="late_days${status1.index + 1 }" class="number required" value="${workAttendance.late_days }" /></td>
						<td><input type="text" size="6" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="weekend_overtime_days${status1.index + 1 }" class="number required" value="${workAttendance.weekend_overtime_days }" /></td>
						
						<td><input type="text" size="7"  <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="every_overtime${status1.index + 1 }" class="number required" value="${workAttendance.every_overtime }" /></td>
						<td><input type="text" size="50" <c:if test="${workAttendance.operationType=='1' }">style="background:#86B300"</c:if><c:if test="${workAttendance.operationType=='3' }">style="background:red" readonly="true"</c:if> name="remark${status1.index + 1 }" class="text" value="${workAttendance.remark }" /></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		
			
						
			
			<div class="divider"></div>
			<p>
				<label>制单人： 	</label> <label>${workAttendance1.build_username } </label>
			</p>
			<p>
				<label>制单日期： 	</label> <label><fmt:formatDate value="${workAttendance1.build_datetime }" pattern="yyyy-MM-dd" /> </label>
			</p>
			


		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				
				<li><div class="buttonActive"><div class="buttonContent"><button type="button" onClick="dialogJumpURL(this.form, '${webroot }/WorkAttendanceGroupAction.do?method=toReCompute')">重新计算</button></div></div></li>
				
				
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">修改</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
