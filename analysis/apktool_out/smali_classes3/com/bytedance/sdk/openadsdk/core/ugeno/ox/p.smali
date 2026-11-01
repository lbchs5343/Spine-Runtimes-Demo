.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

.field private dq:Landroid/content/Context;

.field private ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;Lcom/bytedance/sdk/component/adexpress/d/ia;Lcom/bytedance/sdk/component/adexpress/d/mp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    return-object p0
.end method

.method private d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->p:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/component/adexpress/d/mp;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;I)V
    .locals 2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d()V

    new-instance v0, Lg/tr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p2, v0, Lg/tr;->a:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v1

    invoke-interface {v1, v0}, Lg/dbw;->dq(Lg/tr;)V

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d(Lcom/bytedance/sdk/component/adexpress/d/o;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/o;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->a_(I)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;Lcom/bytedance/sdk/component/adexpress/d/o$dq;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;I)V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->ox:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->iw()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/16 v0, 0x89

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;ILcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->p:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    :goto_0
    return v1
.end method
