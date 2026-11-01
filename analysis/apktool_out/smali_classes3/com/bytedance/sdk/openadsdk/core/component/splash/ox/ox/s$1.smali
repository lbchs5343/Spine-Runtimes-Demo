.class Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method
