.class public Lcom/bytedance/sdk/component/ia/d/ox/d;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/p;->ox()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method
