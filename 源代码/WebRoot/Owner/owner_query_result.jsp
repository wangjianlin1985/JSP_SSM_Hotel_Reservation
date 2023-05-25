<%@ page language="java"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owner.css" /> 

<div id="owner_manage"></div>
<div id="owner_manage_tool" style="padding:5px;">
	<div style="margin-bottom:5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit-new" plain="true" onclick="owner_manage_tool.edit();">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-delete-new" plain="true" onclick="owner_manage_tool.remove();">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true"  onclick="owner_manage_tool.reload();">刷新</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="owner_manage_tool.redo();">取消选择</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="owner_manage_tool.exportExcel();">导出到excel</a>
	</div>
	<div style="padding:0 0 0 7px;color:#333;display:none;">
		<form id="ownerQueryForm" method="post">
			<input type="text" class="textbox" id="ownerUserName" name="ownerUserName" style="width:110px" style="display:none;"/>
			茂名市区线路：<input type="text" class="textbox" id="name" name="name" style="width:110px" />
		<input type="text" id="birthDate" name="birthDate" class="easyui-datebox" editable="false" style="width:100px"style="display:none;">
			<input type="text" class="textbox" id="telephone" name="telephone" style="width:110px" style="display:none;"/>
			<input type="text" class="textbox" id="shzt" name="shzt" style="width:110px" style="display:none;"/>
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="owner_manage_tool.search();">查询</a>
		</form>	
	</div>
</div>

<div id="ownerEditDiv">
	<form id="ownerEditForm" enctype="multipart/form-data"  method="post">
		<div style="display:none;">
			<span class="label">宿主用户名:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_ownerUserName_edit" name="owner.ownerUserName" style="width:200px" />
			</span>
		</div>
		<div style="display:none;">
			<span class="label">登录密码:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_password_edit" name="owner.password" style="width:200px" />

			</span>

		</div>
		<div >
			<span class="label">茂名市区线路:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_name_edit" name="owner.name" style="width:200px" />

			</span>

		</div >
		<div style="display:none;">
			<span class="label">性别:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_gender_edit" name="owner.gender" style="width:200px" />

			</span>

		</div>
		<div style="display:none;">
			<span class="label">出生日期:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_birthDate_edit" name="owner.birthDate" />

			</span>

		</div>
		<div style="display:none;">
			<span class="label">宿主照片:</span>
			<span class="inputControl">
				<img id="owner_ownerPhotoImg" width="200px" border="0px"/><br/>
    			<input type="hidden" id="owner_ownerPhoto" name="owner.ownerPhoto"/>
				<input id="ownerPhotoFile" name="ownerPhotoFile" type="file" size="50" />
			</span>
		</div>
		<div style="display:none;">
			<span class="label">联系电话:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_telephone_edit" name="owner.telephone" style="width:200px" />

			</span>

		</div>
		<div style="display:none;">
			<span class="label">家庭地址:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_address_edit" name="owner.address" style="width:200px" />

			</span>

		</div>
		<div style="display:none;">
			<span class="label">注册时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="owner_regTime_edit" name="owner.regTime" />

			</span>

		</div>
		<div style="display:none;">
			<span class="label">审核状态:</span>
			<span class="inputControl">
				<select id="owner_shzt_edit" name="owner.shzt">
					<option value="待审核">待审核</option>
					<option value="已审核">已审核</option>
				</select>
			</span>

		</div>
	</form>
</div>
<script type="text/javascript" src="Owner/js/owner_manage.js"></script> 
