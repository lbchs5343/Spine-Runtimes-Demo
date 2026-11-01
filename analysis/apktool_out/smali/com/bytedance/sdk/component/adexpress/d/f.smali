.class public Lcom/bytedance/sdk/component/adexpress/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/d/f$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/adexpress/s/dq;

.field private dq:Landroid/content/Context;

.field private iw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:Lcom/bytedance/sdk/component/adexpress/d/ia;

.field private p:Lcom/bytedance/sdk/component/adexpress/d/mp;

.field private s:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/s/dq;Lcom/bytedance/sdk/component/adexpress/d/ia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->p:Lcom/bytedance/sdk/component/adexpress/d/mp;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->ox:Lcom/bytedance/sdk/component/adexpress/d/ia;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->d:Lcom/bytedance/sdk/component/adexpress/s/dq;

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->ox:Lcom/bytedance/sdk/component/adexpress/d/ia;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/adexpress/d/f;)Lcom/bytedance/sdk/component/adexpress/s/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->d:Lcom/bytedance/sdk/component/adexpress/s/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/d/f;->ox()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/adexpress/d/f;Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/d/f;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->p:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/d/kk;->dq(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d(Lcom/bytedance/sdk/component/adexpress/d/o;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/o;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p3

    if-nez p3, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->a_(I)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method private ox()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->s:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->s:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->s:Ljava/util/concurrent/ScheduledFuture;
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


# virtual methods
.method public d()Lcom/bytedance/sdk/component/adexpress/s/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->d:Lcom/bytedance/sdk/component/adexpress/s/dq;

    return-object v0
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->d:Lcom/bytedance/sdk/component/adexpress/s/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->p()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/d/f;->ox()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->p:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->iw()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/d/f;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/d/f$dq;

    invoke-direct {v2, p0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/d/f$dq;-><init>(Lcom/bytedance/sdk/component/adexpress/d/f;ILcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/component/adexpress/p/p;->dq(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->s:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/d/f;->d:Lcom/bytedance/sdk/component/adexpress/s/dq;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/d/f$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/d/f$1;-><init>(Lcom/bytedance/sdk/component/adexpress/d/f;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V

    :goto_0
    return v1
.end method
