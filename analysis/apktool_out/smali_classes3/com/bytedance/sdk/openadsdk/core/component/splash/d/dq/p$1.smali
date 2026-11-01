.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;
.super Lcom/bykv/vk/openvk/component/video/api/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/s/d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ox(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/component/kk/d;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const-string p2, "preload video fail"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/p;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
