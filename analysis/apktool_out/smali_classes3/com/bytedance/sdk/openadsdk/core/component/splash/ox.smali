.class abstract Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;
.super Ljava/lang/Object;


# instance fields
.field protected d:Landroid/view/ViewGroup;

.field protected dq:Landroid/content/Context;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "splash_ad"

    const-string v2, "close_splash_icon"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public dq(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string p2, "splash_ad"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->d:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method
