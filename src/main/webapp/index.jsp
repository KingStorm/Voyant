<%@ include file="resources/jsp/pre_app.jsp" %>
<script>
	Ext.Loader.setConfig({
		enabled : true,
		paths : {
			'Voyant' : 'app',
			'resources': 'resources'
		}
	});

	Ext.application({
		extend : 'Voyant.VoyantDefaultApp',
		name: 'VoyantDefaultApp',
		config: {
			baseUrl: '<%= new java.net.URL(request.getScheme(), request.getServerName(), request.getServerPort(), request.getContextPath()) %>/',
			version: '<%= application.getInitParameter("version") %>',
			build: '<%= application.getInitParameter("build") %>'			
		}
	});
</script>
<title>Voyant Tools</title>
<%@ include file="resources/jsp/post_app.jsp" %>
