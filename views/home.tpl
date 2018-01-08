<!DOCTYPE html>
<html>
	<head>
		{{template "header"}}
		<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
	</head>
	<body>
    	{{template "TopBar"}}
		<div class="container-fluid" style="padding-top:50px">
      		<div class="row">
        		{{template "LeftBar"}}
				<div class="col-sm-9">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">录入理论课程信息</h3>
						</div>
					    <div class="panel-body">
						<form class="form-inline" role="form">
					        <div class="form-group">				
								<label>承担单位</label>			
								<input class="form-control">
								<label>课程名称</label>			
								<input class="form-control">
								<button type="button" class="btn btn-primary" onclick="return QueryInput()">检索</button>				
							</div>
						</form>
						<form method="POST" class="form-inline" role="form" action="/home">
							<div class="form-group" style="padding-top:10px">				
								<label>课程代码</label>
								<input class="form-control" name="cid" id="cid">			
								<label>承担单位</label>			
								<input class="form-control" name="cunit">
								<label>中文名称</label>			
								<input class="form-control" name="cname">
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>课程类别</label>			
								<input class="form-control" name="ccg1">
								<input class="form-control" name="ccg2">
								<label>英文名称</label>
								<input class="form-control" name="cname_en">
								<label>状态</label>
								<input class="form-control" style="width:50px" name="status">		
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>学分</label>			
								<input class="form-control" style="width:50px" name="credit">							
								<label>授课学时</label>
								<input class="form-control" style="width:50px" name="tteach">
								<label>实验学时</label>
								<input class="form-control" style="width:50px" name="texperiment">
								<label>上机学时</label>
								<input class="form-control" style="width:50px" name="tcomputer">
								<label>其他学时</label>
								<input class="form-control" style="width:50px" name="tother">
								<label>总学时</label>
								<input class="form-control" style="width:50px" name="ttotal">		
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>教学大纲</label>		
								<textarea class="form-control" rows="2" style="width:600px" name="syllabus"></textarea>																						
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>课程门数:</label>
								<label>570</label>
								<div class="checkbox" style="padding-left:50px">
								   	<label>
								        <input type="checkbox">限可用课程
								    </label>
								</div>
								<button type="submit" class="btn btn-defult" onclick="return AddInput()">新增</button>	
								<button type="button" class="btn btn-defult" onclick="return DeleteInput()">删除</button>	
								<button type="button" class="btn btn-defult" onclick="return EditInput()">编辑</button>
								<button type="button" class="btn btn-defult" onclick="return StopInput()">停用</button>								
							</div>
						</form>				 	
					    </div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered">
							<caption>课表</caption>
							<thead>
								<tr>
									<th>课程代码</th>
									<th>中文名称</th>
									<th>课程类别</th>
									<th>状态</th>
									<th>学分</th>
									<th>总学时</th>
									<th>实验学时</th>
									<th>限选人数</th>
									<th>任课老师</th>
								</tr>
							</thead>
							<tbody>							
							</tbody>
						</table>
					</div> 
				</div>
      		</div>
    	</div>
		<script type="text/javascript">
			function QueryInput(){
				window.location.href="/home?action=query"
			}
			function AddInput(){
				var cid=document.getElementById("cid")
				if(cid.value.length==0){
					alert("课程代码不能为空")
					return false
				}
				return true	
			}
			function DeleteInput(){
				window.location.href="/home?action=delete"
			}
			function EditInput(){
				window.location.href="/home?action=edit"
			}
			function StopInput(){
				window.location.href="/home?action=stop"
			}
		</script>
	</body>
		
</html>
