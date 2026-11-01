.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;
.super Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/q/ia;->ia(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->o(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->o(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/lp/RewardLpBottomView;->dq()V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ig(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$dq;->dq(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iput p2, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mp:I

    iput-object p3, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p3}, Lg/gdl;->g(Landroid/webkit/WebResourceError;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mp:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p3}, Lg/gdl;->f(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->q:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->no(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/q/ia;

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

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o:Ljava/lang/String;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->ia:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->cd:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mp:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    const-string v1, "onReceivedHttpError"

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->q:Ljava/lang/String;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v1, :cond_0

    invoke-super {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$9;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->s:I

    invoke-super {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    const-string v1, "PlayableEndCard"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
