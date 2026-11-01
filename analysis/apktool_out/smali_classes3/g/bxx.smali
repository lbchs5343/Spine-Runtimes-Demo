.class public abstract Lg/bxx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lg/ecd;

.field public final c:Lg/ao;

.field public final d:Lg/akj;

.field public final e:Lg/ama;

.field public final f:Lg/dzu;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/lang/String;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akj;Lg/ama;Lg/cqe;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/bxx;->g:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lg/guj;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lg/bxx;->h:Ljava/lang/String;

    iput-object p2, p0, Lg/bxx;->d:Lg/akj;

    iput-object p3, p0, Lg/bxx;->e:Lg/ama;

    new-instance v1, Lg/dzu;

    invoke-direct {v1, p2, p3, p1}, Lg/dzu;-><init>(Lg/akj;Lg/ama;Ljava/lang/String;)V

    iput-object v1, p0, Lg/bxx;->f:Lg/dzu;

    new-instance p1, Lg/mc;

    invoke-static {v0}, Lg/ecd;->s(Landroid/content/Context;)Lg/ecd;

    move-result-object p1

    iput-object p1, p0, Lg/bxx;->b:Lg/ecd;

    iget-object p2, p1, Lg/ecd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lg/bxx;->i:I

    iget-object p2, p4, Lg/cqe;->b:Lg/ao;

    iput-object p2, p0, Lg/bxx;->c:Lg/ao;

    iget-object p1, p1, Lg/ecd;->q:Lg/dae;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final j()Lg/fpd;
    .locals 4

    new-instance v0, Lg/fpd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/fpd;-><init>(I)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v2, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Lg/glm;

    if-nez v2, :cond_0

    new-instance v2, Lg/glm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/glm;-><init>(I)V

    iput-object v2, v0, Lg/fpd;->f:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Lg/glm;

    invoke-virtual {v2, v1}, Lg/glm;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lg/bxx;->g:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lg/fpd;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/fpd;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(ILg/cpq;)Lg/chw;
    .locals 13

    new-instance v0, Lg/eeo;

    invoke-direct {v0}, Lg/eeo;-><init>()V

    iget-object v2, p0, Lg/bxx;->b:Lg/ecd;

    iget-object v9, v2, Lg/ecd;->q:Lg/dae;

    iget v3, p2, Lg/cpq;->d:I

    iget-object v10, v0, Lg/eeo;->a:Lg/chw;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lg/ecd;->v()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/cbn;->d()Lg/cbn;

    move-result-object v1

    iget-object v1, v1, Lg/cbn;->c:Lg/fzo;

    iget-object v4, p0, Lg/bxx;->f:Lg/dzu;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/fzo;->getMethodInvocationTelemetryEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lg/fzo;->getMethodTimingTelemetryEnabled()Z

    move-result v1

    iget-object v6, v2, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fbd;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lg/fbd;->l:Lg/cqh;

    instance-of v8, v7, Lg/adw;

    if-eqz v8, :cond_2

    check-cast v7, Lg/adw;

    invoke-virtual {v7}, Lg/adw;->hasConnectionInfo()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lg/adw;->isConnecting()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v6, v7, v3}, Lg/aic;->f(Lg/fbd;Lg/adw;I)Lg/csf;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v7, v6, Lg/fbd;->e:I

    add-int/2addr v7, v5

    iput v7, v6, Lg/fbd;->e:I

    invoke-virtual {v1}, Lg/csf;->getMethodTimingTelemetryEnabled()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v1, Lg/aic;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_2

    :cond_4
    move-wide v11, v6

    :goto_2
    if-eqz v5, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_5
    move-wide v7, v6

    move-wide v5, v11

    invoke-direct/range {v1 .. v8}, Lg/aic;-><init>(Lg/ecd;ILg/dzu;JJ)V

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg/dbi;

    const/4 v4, 0x2

    invoke-direct {v3, v9, v4}, Lg/dbi;-><init>(Landroid/os/Handler;I)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg/err;

    invoke-direct {v4, v3, v1}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/dyt;)V

    iget-object v1, v10, Lg/chw;->i:Lg/ja;

    invoke-virtual {v1, v4}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {v10}, Lg/chw;->n()V

    :cond_6
    new-instance v1, Lg/fdb;

    iget-object v3, p0, Lg/bxx;->c:Lg/ao;

    invoke-direct {v1, p1, p2, v0, v3}, Lg/fdb;-><init>(ILg/cpq;Lg/eeo;Lg/ao;)V

    iget-object p1, v2, Lg/ecd;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Lg/clf;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {p2, v1, p1, p0}, Lg/clf;-><init>(Lg/fdb;ILg/bxx;)V

    const/4 p1, 0x4

    invoke-virtual {v9, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v10
.end method
