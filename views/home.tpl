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
								<button type="button" class="btn btn-primary">检索</button>				
							</div>
						</form>
						<form class="form-inline" role="form">
							<div class="form-group" style="padding-top:10px">				
								<label>课程代码</label>
								<input class="form-control">			
								<label>承担单位</label>			
								<input class="form-control">
								<label>中文名称</label>			
								<input class="form-control">
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>课程类别</label>			
								<input class="form-control">
								<input class="form-control">
								<label>英文名称</label>
								<input class="form-control">
								<label>状态</label>
								<input class="form-control" style="width:50px">		
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>学分</label>			
								<input class="form-control" style="width:50px">							
								<label>授课学时</label>
								<input class="form-control" style="width:50px">
								<label>实验学时</label>
								<input class="form-control" style="width:50px">
								<label>上机学时</label>
								<input class="form-control" style="width:50px">
								<label>其他学时</label>
								<input class="form-control" style="width:50px">
								<label>总学时</label>
								<input class="form-control" style="width:50px">		
							</div>
							<div class="form-group" style="padding-top:10px">				
								<label>教学大纲</label>		
								<textarea class="form-control" rows="2" style="width:600px"></textarea>																						
							</div>
							<div class="row" style="padding-top:10px">				
								<label>课程门数:</label>
								<label>570</label>
								<div class="checkbox" style="padding-left:50px">
								   	<label>
								        <input type="checkbox">限可用课程
								    </label>
								</div>
								<div style="padding-left:50px">
								<button type="button" class="btn btn-defult">新增</button>	
								<button type="button" class="btn btn-defult">删除</button>	
								<button type="button" class="btn btn-defult">保存</button>
								<button type="button" class="btn btn-defult">返回</button>
								</div>									
							</div>
						</form>				 	
					    </div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered">
							<caption>课表</caption>
							<thead>
								<tr >
									<th>序号</th>
									<th>课程</th>
									<th>学分</th>
									<th>总学时</th>
									<th>课程类别</th>
									<th>开课单位</th>
									<th>上课班号</th>
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
	</body>
		
</html>
