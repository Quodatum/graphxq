declare  variable $body external :="{body}";
declare  variable $title external :="{title}";
(:~ version e.g "0.5" :)
declare  variable $version external :="?todo";
declare  variable $bodyclass external :="{$bodyclass}";
declare  variable $active-link external :=function($_){$_};

<html >
	<head id="head">
		<meta charset="utf-8" />
		<title id="title">{$title}</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="description" content="graphviz tool" />
		<meta name="author" content="andy bunce" />
		<link
            href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css"
            rel="stylesheet" type="text/css" />
		
		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="/static/graphxq/graphxq2.png" />

		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
         <script src="http://d3js.org/d3.v4.js" charset="utf-8"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ace.js" type="text/javascript" charset="utf-8"></script>
         <link href="/static/graphxq/app.css" rel="stylesheet" type="text/css" />
        <link href="/static/graphxq/svg-pan-zoom.css" rel="stylesheet" type="text/css" />
        <script src="/static/graphxq/app.js" type="text/javascript"></script>
       
            <script src="/static/graphxq/svg-pan-zoom2.js"></script>
    <script type="text/javascript"><![CDATA[
        // todo
        ]]></script>
	</head>
	<body class="{$bodyclass}">
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li> <a href="/graphxq" class="brand" title="Version {$version}">
                        <img src="/static/graphxq/graphxq2.png" />
                        GraphXQ
                    </a>
        </li> 
         <li class="{$active-link('dot')}">
                    <a href="dot" rel="tooltip" title="Define a graph in Dot notation" ><i class="glyphicon glyphicon-edit"></i> Dot</a>
                </li>

                <li class="{$active-link('dotml')}">
                    <a href="dotml"><i class="glyphicon glyphicon-align-center"
                    title="Define a graph using DotML XML"
                    ></i> DotML</a>
                </li>

               <li class="{$active-link('library')}">
                <a href="library"
                title="Examples"
                ><i class="glyphicon glyphicon-book"></i> Library</a>
              </li> 

            
      </ul>
      
      <form class="navbar-form navbar-left" role="search"  action="search" method="get">
        <div class="form-group">
          <input name="q" type="text" class="form-control" placeholder="Search"/>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      
      <ul class="nav navbar-nav navbar-right">
         <li >
              <a id="bnOpts" class="btn btn-mini" 
                href="/graphxq/views/options.xml" data-target="#myModal" data-toggle="modal"
                 title="Extra settings (not implemented yet)"  >
                    <i class="glyphicon glyphicon-gift"></i>
                    Options
                </a>
        </li>
          <li class="{$active-link('ace')}">
                  <a href="ace"  title="Xquery editor (just for fun)"
                  ><i class="glyphicon glyphicon-wrench"></i> Ace</a>
              </li>    
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li>
            <a href="testd3">D3 test</a>
            </li>
             <li class="{$active-link('api')}">
                  <a href="api"  title="About the API"
                  ><i class="glyphicon glyphicon-wrench"></i> API</a>
              </li> 
            <li class="divider"></li>
            <li><a href="about">About</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

       <!-- Modal http://jsfiddle.net/matt_hwy1/hRq82/1/ -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        @TODO...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </div>
		<div class="container">
				{$body}
		</div>

	</body>

</html>