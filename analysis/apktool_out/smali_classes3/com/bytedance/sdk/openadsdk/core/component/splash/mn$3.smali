.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method
