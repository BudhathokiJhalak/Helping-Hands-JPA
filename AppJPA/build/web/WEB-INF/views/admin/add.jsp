<%@include file="../header.jsp" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${SITE_URL}/admin"><span class="glyphicon glyphicon-hand-up"></span> Helping Hands <span class="glyphicon glyphicon-thumbs-up"></span></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${SITE_URL}/admin/logout" onclick="return confirm('Are you sure to Logout?')"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
        </ul>        
    </div>
</nav>
<div class="container">
    <div class="signup-form-container">
        <!-- form start -->
        <form method="post">
            <div class="form-header">
                <h3 class="form-title"><i class="fa fa-user"></i><p class="text-center">Please check every details entered before registration.</p></h3>
            </div>
            <div class="form-body">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                        <input name="name" type="text" class="form-control" placeholder="Username" required="required"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                        <input name="email" type="text" class="form-control" placeholder="Email" required="required"/>
                    </div>                     
                </div>
                <div class="row">
                    <div class="form-group col-lg-6">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input name="password" type="password" class="form-control" placeholder="Password" required="required"/>
                        </div>                  
                    </div>
                    <div class="form-group col-lg-6">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input name="confirmPassword" type="password" class="form-control" placeholder="Retype Password" required="required">
                        </div>                  
                    </div>
                    <div class="form-group col-lg-6">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                            <input name="firstName" type="text" class="form-control" placeholder="Your First Name" required="required">
                        </div>                   
                    </div>
                    <div class="form-group col-lg-6">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                            <input name="lastName" type="text" class="form-control" placeholder="Your Last Name" required="required">
                        </div>                   
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
                        <input name="permanentAddress" type="text" class="form-control" placeholder="Your permanent address" required="required">
                    </div>                   
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
                    <input name="currentAddress" type="text" class="form-control" placeholder="Your current address" required="required">
                </div>                   
            </div>
            <div class="row">
                <div class="form-group col-lg-6">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></div>
                        <input name="contactNo" type="text" class="form-control" placeholder="Contact Number" required="required">
                    </div>                    
                </div>
                <div class="form-group col-lg-6">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></div>
                        <input name="contactNoOpt" type="text" class="form-control" placeholder="Contact Number(Optional)">
                    </div>                    
                </div>
                <div class="form-group col-lg-4">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-tint"></span></div>
                        <input name="bloodGroup" type="text" class="form-control" placeholder="Blood Group" required="required">
                    </div>                   
                </div>
                <div class="form-group col-lg-4">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-briefcase"></span></div>
                        <input name="profession" type="text" class="form-control" placeholder="Profession" required="required">
                    </div>                    
                </div>
                <div class="form-group col-lg-4">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-education"></span></div>
                        <input name="education" type="text" class="form-control" placeholder="Education Level" required="required">
                    </div>                    
                </div>
                <div class="form-group col-lg-3">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
                        <input name="dateOfBirth" type="text" class="form-control" placeholder="Date of Birth(DD/MM/YYYY)" required="required">
                    </div>                    
                </div>
                <div class="form-group col-lg-3">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-heart-empty"></span></div>
                        <input name="maritalStatus" type="text" class="form-control" placeholder="Marital Status" required="required">
                    </div>                    
                </div>
                <div class="form-group col-lg-3">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                        <input name="gender" type="text" class="form-control" placeholder="gender" required="required">
                    </div>                  
                </div>
                <div class="form-group col-lg-3">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-question-sign"></span></div>
                        <input name="helpOthers" type="text" class="form-control" placeholder="Do you agree to help others?" required="required">
                    </div>                   
                </div>
                <div class="form-group col-lg-12">
                    <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-option-horizontal"></span></div>
                        <input name="aboutU" type="text" class="form-control" placeholder="Tell us more about you..." required="required">
                    </div>                  
                </div>
            </div>
            <a href="${SITE_URL}/admin" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-triangle-left"> Back</span></a>
            <div class="form-footer pull-right">

                <button type="submit" class="btn btn-primary">
                    <span class="glyphicon glyphicon-open"></span> Register
                </button>
            </div>
        </form>
    </div>
</div>
<%@include file="../footer.jsp" %>