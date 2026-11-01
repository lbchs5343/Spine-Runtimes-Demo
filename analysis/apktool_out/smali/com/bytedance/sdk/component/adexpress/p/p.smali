.class public Lcom/bytedance/sdk/component/adexpress/p/p;
.super Ljava/lang/Object;


# direct methods
.method public static d(Lcom/bytedance/sdk/component/o/kk;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->mp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/kk;->dq(I)V

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public static dq(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/o/kk;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/dq;->ox()Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dq/dq/ox;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/o/kk;->dq(I)V

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method
