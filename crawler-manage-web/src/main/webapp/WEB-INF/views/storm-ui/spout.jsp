<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.Map, java.util.ArrayList"%>
<%@ include file="/WEB-INF/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">

<jsp:include page="../header.jsp"></jsp:include>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>

	<div class="container-fluid sr-zql-sui-container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h2 class="page-header sr-zql-page-header">Spout UI</h2>
				
				<!-- Component summary -->
				<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption><i class="glyphicon glyphicon-paperclip"></i> Component summary：</caption>
					<tr class="info">
						<th><span data-toggle="tooltip" data-placement="right" title="The ID assigned to a the Component by the Topology.">Id</span></th>
						<th><span data-toggle="tooltip" data-placement="right" data-original-title="The name given to the topology by when it was submitted. Click the name to view the Topology's information.">Topology</span></th>
						<th><span data-toggle="tooltip" data-placement="top" data-original-title="Executors are threads in a Worker process.">Executors</span></th>
						<th><span data-toggle="tooltip" data-placement="top" data-original-title="A Task is an instance of a Bolt or Spout. The number of Tasks is almost always equal to the number of Executors.">Tasks</span></th>
					</tr>
					<tr>
						<td>${dataMap.id }</td>
						<td><a href="${ctx}/sui/topology?id=${dataMap.encodedTopologyId }">${dataMap.name }</a></td>
						<td><fmt:formatNumber value="${dataMap.executors }" maxFractionDigits="0"/></td>
						<td><fmt:formatNumber value="${dataMap.tasks }" maxFractionDigits="0"/></td>
					</tr>
				</table>
				</div>
				
				<!-- Spout stats -->
				<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption><i class="glyphicon glyphicon-paperclip"></i> Spout stats：</caption>
					<tr class="info">
						<th><span data-toggle="tooltip" data-placement="right" title="The past period of time for which the statistics apply. Click on a value to set the window for this page.">Window</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The number of Tuples emitted.">Emitted</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The number of Tuples emitted that sent to one or more bolts.">Transferred</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The average time a Tuple "tree" takes to be completely processed by the Topology. A value of 0 is expected if no acking is done.'>Complete latency (ms)</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" successfully processed. A value of 0 is expected if no acking is done.'>Acked</span>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" that were explicitly failed or timed out before acking was completed. A value of 0 is expected if no acking is done.'>Failed</span>
					</tr>
					<c:forEach var="spoutSummary" items="${dataMap.spoutSummary }">
				    <tr>
				        <td><a href="http://10.168.250.21:8080/component.html?id=${dataMap.encodedId }&amp;topology_id=${dataMap.encodedTopologyId }&amp;window=${spoutSummary.window }">${spoutSummary.windowPretty }</a></td>
				        <td><fmt:formatNumber value="${spoutSummary.emitted }" maxFractionDigits="0"/></td>
				        <td><fmt:formatNumber value="${spoutSummary.transferred }" maxFractionDigits="0"/></td>
				        <td>${spoutSummary.completeLatency }</td>
				        <td><fmt:formatNumber value="${spoutSummary.acked }" maxFractionDigits="0"/></td>
				        <td><fmt:formatNumber value="${spoutSummary.failed }" maxFractionDigits="0"/></td>
				    </tr>
				    </c:forEach>
				</table>
				</div>
				
				<!-- Output stats (All time) -->
				<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<caption><i class="glyphicon glyphicon-paperclip"></i> Output stats (All time)：</caption>
					<tr class="info">
						<th><span data-toggle="tooltip" data-placement="right" title='The name of the Tuple stream given in the Topolgy, or "default" if none was given.'>Stream</span></th>
						<th><span data-toggle="tooltip" data-placement="right" title="The number of Tuples emitted.">Emitted</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The number of Tuples emitted that sent to one or more bolts.">Transferred</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The average time a Tuple "tree" takes to be completely processed by the Topology. A value of 0 is expected if no acking is done.'>Complete latency (ms)</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" successfully processed. A value of 0 is expected if no acking is done.'>Acked</span>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" that were explicitly failed or timed out before acking was completed. A value of 0 is expected if no acking is done.'>Failed</span>
					</tr>
					<c:forEach var="outputStat" items="${dataMap.outputStats }">
					<tr>
				        <td>${outputStat.stream }</td>
				        <td><fmt:formatNumber value="${outputStat.emitted }" maxFractionDigits="0"/></td>
				        <td><fmt:formatNumber value="${outputStat.transferred }" maxFractionDigits="0"/></td>
				        <td>${outputStat.completeLatency }</td>
				        <td><fmt:formatNumber value="${outputStat.acked }" maxFractionDigits="0"/></td>
				        <td><fmt:formatNumber value="${outputStat.failed }" maxFractionDigits="0"/></td>
				    </tr>
				    </c:forEach>
				</table>
				</div>
				
				<!-- Executors (All time) -->
				<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption><i class="glyphicon glyphicon-paperclip"></i> Executors (All time)：</caption>
					<tr class="info">
						<th><span data-toggle="tooltip" data-placement="right" title="The unique executor ID.">Id</span></th>
						<th><span data-toggle="tooltip" data-placement="right" title="The length of time an Executor (thread) has been alive.">Uptime</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The hostname reported by the remote host. (Note that this hostname is not the result of a reverse lookup at the Nimbus node.)">Host</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The port number used by the Worker to which an Executor is assigned. Click on the port number to open the logviewer page for this Worker.">Port</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The number of Tuples emitted.">Emitted</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title="The number of Tuples emitted that sent to one or more bolts.">Transferred</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The average time a Tuple "tree" takes to be completely processed by the Topology. A value of 0 is expected if no acking is done.'>Complete latency (ms)</span></th>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" successfully processed. A value of 0 is expected if no acking is done.'>Acked</span>
						<th><span data-toggle="tooltip" data-placement="top" title='The number of Tuple "trees" that were explicitly failed or timed out before acking was completed. A value of 0 is expected if no acking is done.'>Failed</span>
					</tr>
					<c:forEach var="executorStat" items="${dataMap.executorStats }">
					<tr>
				      	<td>${executorStat.id }</td>
				        <td>${executorStat.uptime }</td>
				        <td>${executorStat.host }</td>
				        <td><a href="${executorStat.workerLogLink }"><fmt:formatNumber value="${executorStat.port }" maxFractionDigits="0" pattern="#"/></a></td>
				        <td><fmt:formatNumber value="${executorStat.emitted }" maxFractionDigits="0"/></td>
				       	<td><fmt:formatNumber value="${executorStat.transferred }" maxFractionDigits="0"/></td>
				        <td>${executorStat.completeLatency }</td>
				        <td><fmt:formatNumber value="${executorStat.acked }" maxFractionDigits="0"/></td>
				        <td><fmt:formatNumber value="${executorStat.failed }" maxFractionDigits="0"/></td>
				   	</tr>
				   	</c:forEach>
				</table>
				</div>
				
				<!-- Errors -->
				<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption><i class="glyphicon glyphicon-paperclip"></i> Errors：</caption>
					<tr class="info">
						<th>Time</th>
						<th>Error Host</th>
						<th>Error Port</th>
						<th>Error</th>
					</tr>
					<c:forEach var="componentError" items="${dataMap.componentErrors }">
					<tr>
						<td>${componentError.time }</td>
						<td>${componentError.errorHost }</td>
						<td><a href="${componentError.errorWorkerLogLink }"><fmt:formatNumber value="${componentError.errorPort }" maxFractionDigits="0" pattern="#"/></a></td>
						<td><span id="<fmt:formatNumber value="${componentError.errorLapsedSecs }" maxFractionDigits="0" pattern="#"/>" class="errorSpan">${componentError.error }</span></td>
					</tr>
					</c:forEach>
				</table>
				</div>
			</div>
		</div>			
	</div>
	
	<!-- 返回顶部 -->
	<div class="sr-zql-topret-up"></div>
	<div class="sr-zql-topret-down"></div>
	<jsp:include page="../footer.jsp"></jsp:include>
	
	<script src="${ctx}/static/js/sweet-totop.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			//工具提示
			$('[data-toggle="tooltip"]').tooltip();
			
			//返回
			$('.sr-zql-topret-down').on("click", function(){
				history.go(-1);
			});
		});
	</script>
</body>
</html>

