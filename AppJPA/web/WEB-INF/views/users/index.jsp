<%@include file="../header.jsp" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${SITE_URL}/user"><span class="glyphicon glyphicon-hand-up"></span> Helping Hands <span class="glyphicon glyphicon-thumbs-up"></span></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${SITE_URL}/user/logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
        </ul>
    </div>
</nav>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form method="post" class="search-form">
            <div class="form-group has-feedback">
                <label for="search" class="sr-only">Search</label>
                <input type="text" class="form-control" name="search" placeholder="lots of people are willing to help you..">
                <span class="glyphicon glyphicon-search form-control-feedback"></span>
            </div>
        </form>
    </div>
</div>
<%@include file="../footer.jsp" %>