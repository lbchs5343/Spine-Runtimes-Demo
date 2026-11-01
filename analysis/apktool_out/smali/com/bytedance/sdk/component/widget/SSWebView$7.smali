.class Lcom/bytedance/sdk/component/widget/SSWebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/widget/SSWebView;

.field final synthetic dq:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->dq:Landroid/webkit/WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->dq:Landroid/webkit/WebViewClient;

    instance-of v1, v0, Lcom/bytedance/sdk/component/widget/SSWebView$ox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    move-object v2, v0

    check-cast v2, Lcom/bytedance/sdk/component/widget/SSWebView$ox;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTouchStateListener(Lcom/bytedance/sdk/component/widget/SSWebView$ox;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTouchStateListener(Lcom/bytedance/sdk/component/widget/SSWebView$ox;)V

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/SSWebView$dq;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v2, Lcom/bytedance/sdk/component/widget/dq;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/component/widget/dq;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/component/widget/dq;)Lcom/bytedance/sdk/component/widget/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$7;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->p(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/component/widget/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
