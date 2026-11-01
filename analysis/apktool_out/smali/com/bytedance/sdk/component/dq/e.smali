.class public Lcom/bytedance/sdk/component/dq/e;
.super Lcom/bytedance/sdk/component/dq/dq;


# static fields
.field static final synthetic o:Z = true


# instance fields
.field protected ia:Ljava/lang/String;

.field protected kk:Lcom/bytedance/sdk/component/mp/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/dq/dq;-><init>()V

    return-void
.end method

.method private dq(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/dq;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/dq/dq;->iw:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/dq/e$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/component/dq/e$1;-><init>(Lcom/bytedance/sdk/component/dq/e;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/dq/e;->dq(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/component/dq/dq;->d()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/e;->p()V

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/mp/dq;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/dq/o;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "AddJavascriptInterface"
        }
    .end annotation

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->ox:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/dq/o;->q:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/dq/e;->ox()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    const-string v2, "._handleMessageFromToutiao("

    const-string v3, ")"

    invoke-static {v0, v1, v2, p1, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/dq/e;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/bytedance/sdk/component/dq/f;->ia:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/bytedance/sdk/component/dq/f;->ia:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iframe[src=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "\'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage("

    const-string v2, ", atob(\'"

    const-string v3, "javascript:(function(){   const iframe = document.querySelector(atob(\'"

    invoke-static {v3, p2, v1, p1, v2}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\'));   }})()"

    invoke-static {p2, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/dq/e;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/dq/f;)V

    return-void
.end method

.method public getContext(Lcom/bytedance/sdk/component/dq/o;)Landroid/content/Context;
    .locals 1

    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/mp/dq;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/component/dq/o;->dq:Lcom/bytedance/sdk/component/mp/dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/mp/dq;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebView cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/dq/dq;->invokeMethod(Ljava/lang/String;)V

    return-void
.end method

.method public ox()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/dq/e;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/component/mp/dq;->dq(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/dq/e;->kk:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/e;->ia:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/mp/dq;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
