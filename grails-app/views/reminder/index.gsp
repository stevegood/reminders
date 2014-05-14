<%--
  User: steve
  Date: 5/13/14
  Time: 6:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>

<g:render template="/templates/topBar" />

<div class="row">
    <div class="large-12 columns">
        <div class="panel">
            <p>Hi Steve, here are your reminders for today!</p>
        </div>
    </div>
</div>

<g:each in="${reminders}" var="reminder">
    <div class="off-canvas-wrap" data-offcanvas>
        <div class="inner-wrap">
            <nav class="tab-bar">
                <section class="right-small">
                    <a class="right-off-canvas-toggle menu-icon" href="#"><span></span></a>
                </section>
                <section class="left tab-bar-section">
                    <h2 class="title">${reminder.name}</h2>
                </section>
            </nav>

            <aside class="right-off-canvas-menu">
                <ul class="off-canvas-list">
                    <li><a href="#">Complete</a></li>
                    <li><a href="#">Edit</a></li>
                    <li><a href="#">Delete</a></li>
                </ul>
            </aside>

            <section class="main-section">
                <div class="row">
                    <div class="large-12 columns">
                        <br/>
                        <p>${reminder.description}</p>
                        <br/>
                    </div>
                </div>
            </section>
        </div>
    </div>
</g:each>



</body>
</html>
