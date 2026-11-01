.class public Lcom/bytedance/msdk/ox/p/ox;
.super Lcom/bytedance/msdk/ox/p/d;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public B_()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->kx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/s/d/p$ox;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/ox/s/dq/d;->d(Z)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0, p3}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/core/s/d/p$ox;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, p2}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/p/d;->no()Lcom/bytedance/msdk/ox/ox/dq/mn;

    return-void
.end method

.method public iw()Lcom/bytedance/msdk/ox/s/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    return-object v0
.end method

.method public s()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/d;->ox:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->wp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
