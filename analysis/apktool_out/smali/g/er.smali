.class public abstract Lg/er;
.super Lg/bkg;
.source "SourceFile"

# interfaces
.implements Lg/fjt;


# static fields
.field public static final synthetic _u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleted$volatile:I

.field private volatile synthetic _queue$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue$volatile"

    const-class v1, Lg/er;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lg/er;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cpk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/er;->_isCompleted$volatile:I

    return-void
.end method


# virtual methods
.method public final _v()J
    .locals 11

    invoke-virtual {p0}, Lg/bkg;->r()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v0, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpa;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    sget-object v5, Lg/fql;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v7, v0, Lg/fql;->c:[Lg/ghe;

    if-eqz v7, :cond_3

    aget-object v7, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_0
    if-nez v7, :cond_4

    monitor-exit v0

    move-object v7, v4

    goto :goto_3

    :cond_4
    :try_start_1
    iget-wide v8, v7, Lg/ghe;->a:J

    sub-long v8, v5, v8

    cmp-long v10, v8, v1

    if-ltz v10, :cond_5

    invoke-virtual {p0, v7}, Lg/er;->h(Ljava/lang/Runnable;)Z

    move-result v7

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v0, v3}, Lg/fql;->d(I)Lg/ghe;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object v7, v4

    :goto_2
    monitor-exit v0

    :goto_3
    if-nez v7, :cond_2

    goto :goto_5

    :goto_4
    monitor-exit v0

    throw v1

    :cond_7
    :goto_5
    sget-object v0, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    instance-of v6, v5, Lg/xr;

    if-eqz v6, :cond_c

    move-object v6, v5

    check-cast v6, Lg/xr;

    invoke-virtual {v6}, Lg/xr;->h()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lg/xr;->c:Lg/hy;

    if-eq v7, v8, :cond_9

    move-object v4, v7

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_7

    :cond_9
    invoke-virtual {v6}, Lg/xr;->k()Lg/xr;

    move-result-object v6

    :cond_a
    invoke-virtual {v0, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_a

    goto :goto_6

    :cond_c
    sget-object v6, Lg/bfc;->b:Lg/hy;

    if-ne v5, v6, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v0, p0, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move-object v4, v5

    check-cast v4, Ljava/lang/Runnable;

    :goto_7
    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_e
    iget-object v0, p0, Lg/bkg;->n:Lg/fbz;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_f

    :goto_8
    move-wide v6, v4

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Lg/fbz;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    move-wide v6, v1

    :goto_9
    cmp-long v0, v6, v1

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    sget-object v0, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v6, v0, Lg/xr;

    if-eqz v6, :cond_13

    check-cast v0, Lg/xr;

    sget-object v6, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    const-wide/32 v8, 0x3fffffff

    and-long/2addr v8, v6

    long-to-int v0, v8

    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v6, v8

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v7, v6

    if-ne v0, v7, :cond_12

    const/4 v3, 0x1

    :cond_12
    if-nez v3, :cond_14

    goto :goto_a

    :cond_13
    sget-object v3, Lg/bfc;->b:Lg/hy;

    if-ne v0, v3, :cond_16

    goto :goto_b

    :cond_14
    sget-object v0, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpa;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lg/fql;->h()Lg/ghe;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    iget-wide v3, v0, Lg/ghe;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_17

    :cond_16
    :goto_a
    return-wide v1

    :cond_17
    return-wide v3

    :cond_18
    :goto_b
    return-wide v4

    :cond_19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_d

    goto/16 :goto_6
.end method

.method public final d(JLg/gsn;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    new-instance v2, Lg/ghk;

    add-long/2addr v0, p1

    invoke-direct {v2, p0, v0, v1, p3}, Lg/ghk;-><init>(Lg/er;JLg/gsn;)V

    invoke-virtual {p0, p1, p2, v2}, Lg/er;->e(JLg/ghe;)V

    new-instance p1, Lg/cby;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v2}, Lg/cby;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Lg/gsn;->ad(Lg/fkq;)V

    :cond_2
    return-void
.end method

.method public final e(JLg/ghe;)V
    .locals 5

    sget-object v0, Lg/er;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpa;

    if-nez v0, :cond_3

    new-instance v4, Lg/bpa;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v4, Lg/bpa;->a:J

    :cond_1
    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    check-cast v0, Lg/bpa;

    :cond_3
    invoke-virtual {p3, p1, p2, v0, p0}, Lg/ghe;->e(JLg/bpa;Lg/er;)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lg/bkg;->p(JLg/ghe;)V

    return-void

    :cond_6
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bpa;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lg/fql;->h()Lg/ghe;

    move-result-object v1

    :cond_7
    if-ne v1, p3, :cond_8

    invoke-virtual {p0}, Lg/bkg;->k()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p2, p1, :cond_8

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public f(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lg/er;->h(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/bkg;->k()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lg/bzr;->t:Lg/bzr;

    invoke-virtual {v0, p1}, Lg/bzr;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)Z
    .locals 6

    :goto_0
    sget-object v0, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lg/er;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v4, v1, Lg/xr;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Lg/xr;

    invoke-virtual {v4, p1}, Lg/xr;->i(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v2, :cond_4

    const/4 v0, 0x2

    if-eq v5, v0, :cond_8

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lg/xr;->k()Lg/xr;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_5

    goto :goto_0

    :cond_7
    sget-object v4, Lg/bfc;->b:Lg/hy;

    if-ne v1, v4, :cond_9

    :cond_8
    return v3

    :cond_9
    new-instance v3, Lg/xr;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lg/xr;-><init>(IZ)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lg/xr;->i(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Lg/xr;->i(Ljava/lang/Object;)I

    :cond_a
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    :goto_1
    return v2

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_a

    goto :goto_0
.end method

.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lg/er;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isEmpty()Z
    .locals 7

    iget-object v0, p0, Lg/bkg;->n:Lg/fbz;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fbz;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object v0, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpa;

    if-eqz v0, :cond_3

    sget-object v3, Lg/fql;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v3, v0, Lg/xr;

    if-eqz v3, :cond_6

    check-cast v0, Lg/xr;

    sget-object v3, Lg/xr;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v3, v5

    const/16 v5, 0x1e

    shr-long/2addr v3, v5

    long-to-int v4, v3

    if-ne v0, v4, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    sget-object v3, Lg/bfc;->b:Lg/hy;

    if-ne v0, v3, :cond_7

    :goto_2
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public shutdown()V
    .locals 7

    sget-object v0, Lg/fla;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lg/er;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v0, Lg/bfc;->b:Lg/hy;

    sget-object v3, Lg/er;->_u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v3, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lg/xr;

    if-eqz v5, :cond_3

    check-cast v4, Lg/xr;

    invoke-virtual {v4}, Lg/xr;->j()Z

    goto :goto_1

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Lg/xr;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Lg/xr;-><init>(IZ)V

    move-object v6, v4

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lg/xr;->i(Ljava/lang/Object;)I

    :cond_5
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lg/er;->_v()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_2
    sget-object v0, Lg/er;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bpa;

    if-eqz v0, :cond_9

    monitor-enter v0

    :try_start_0
    sget-object v4, Lg/fql;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/fql;->d(I)Lg/ghe;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_3
    monitor-exit v0

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2, v3, v4}, Lg/bkg;->p(JLg/ghe;)V

    goto :goto_2

    :goto_4
    monitor-exit v0

    throw v1

    :cond_9
    :goto_5
    return-void

    :cond_a
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v4, :cond_5

    goto :goto_0
.end method
