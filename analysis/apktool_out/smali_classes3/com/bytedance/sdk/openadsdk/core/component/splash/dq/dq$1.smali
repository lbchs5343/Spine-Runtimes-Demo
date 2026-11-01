.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->d(Lcom/bytedance/sdk/openadsdk/core/r/dq;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/ds;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/r/ds;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;[B)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void

    :cond_2
    const/4 p1, -0x4

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
