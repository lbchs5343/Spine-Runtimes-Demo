.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq;

.field final synthetic dq:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq$1;->dq:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/p/kk$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/d/dq;
    .locals 2

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/dq/d/dq;

    invoke-direct {p3}, Lcom/bytedance/sdk/component/adexpress/dq/d/dq;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/dq;->dq(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->d()Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/PlayableFeedWebView$dq$1;->dq:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->dq(Landroid/webkit/WebView;Lcom/bytedance/sdk/component/adexpress/p/kk$dq;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/dq;->dq(Landroid/webkit/WebResourceResponse;)V

    return-object p3
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
