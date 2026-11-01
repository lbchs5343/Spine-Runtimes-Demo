.class Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(JI)V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "splash_ad"

    const-string v2, "close_splash_icon"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JI)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-void
.end method

.method public dq(JJ)V
    .locals 0

    return-void
.end method
