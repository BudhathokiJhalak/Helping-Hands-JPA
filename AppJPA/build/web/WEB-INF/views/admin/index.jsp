<%@include file="../header.jsp" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${SITE_URL}/admin"><span class="glyphicon glyphicon-hand-up"></span> Helping Hands <span class="glyphicon glyphicon-thumbs-up"></span></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${SITE_URL}/admin/export" onclick="return confirm('Are you sure to Export?')"><span class="glyphicon glyphicon-save"></span> Export </a></li>
            <li><a href="${SITE_URL}/admin/logout" onclick="return confirm('Are you sure to Logout?')"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
        </ul>        
    </div>
</nav>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form method="post" class="search-form">
            <div class="form-group has-feedback">
                <label for="search" class="sr-only">Search</label>
                <input type="text" class="form-control" name="search" placeholder="search">
                <span class="glyphicon glyphicon-search form-control-feedback"></span>
            </div>
        </form>
    </div>
</div>
<div class="container-fluid">
    <div class="pull-right">
        <a href="${SITE_URL}/admin/add" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus">ADD</span></a>
    </div>
    <table class="table table-hover">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Contact No</th>
            <th>Profession</th>
            <th>Current Address</th>
            <th>Education Level</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${requestScope.users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName} ${user.lastName}</td>
                <td>${user.gender}</td>
                <td>${user.email}</td>
                <td>${user.contactNo}</td>
                <td>${user.profession}</td>
                <td>${user.currentAddress}</td>
                <td>${user.education}</td>
                <td>
                    <a href="${SITE_URL}/admin/update" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-edit"></span></a>
                    <a href="${SITE_URL}/admin/delete" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <nav aria-label="...">
        <ul class="pager">
            <li><a href="#">Previous</a></li>
            <li><a href="#">Next</a></li>
        </ul>
    </nav>    
</div>
<%@include file="../footer.jsp" %>