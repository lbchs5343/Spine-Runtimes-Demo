.class Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;
.super Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/playable/s$d;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Lcom/bytedance/sdk/openadsdk/core/playable/s$d;)Lcom/bytedance/sdk/openadsdk/core/playable/s$d;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/q/ia;->ia(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;I)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    const-string p2, "py_loading_success"

    const/4 v0, 0x0

    const-string v1, "embeded_ad"

    invoke-static {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Z)Z

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->p(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/s$dq;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/q/ia;->kk(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
