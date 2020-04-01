<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="f-header">
    <div class="f-header-box clearfix">
        <a href="/index" class="logo" title="易码实验室"></a>
        <nav class="header-nav">
            <a href="/index" class="header-nav-item">首 页</a>
            <a href="../course/list.html" class="header-nav-item">课 程</a>
            <a href="../user/home.jsp" class="header-nav-item">我的</a>
            <a href="http://opt.ioswift.org" target="_blank" class="header-nav-item" style="width:100px;">运营CMS</a>
            <a href="http://m.ioswift.org" target="_blank" class="header-nav-item" style="width:100px;">M站</a>
        </nav>
    </div>
</div>
<script>
    function reloadIndityImg(eleId) {
        document.getElementById(eleId).src = CONTEXT_PATH + "/tools/identiry/code.html?ticket=" + Math.random();
    }
</script>
