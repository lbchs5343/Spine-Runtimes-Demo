.class public final Lg/aaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lg/gyt;

.field public final synthetic b:Lg/tq;

.field public final c:Lg/eie;

.field public final d:Lg/gyt;


# direct methods
.method public constructor <init>(Lg/tq;Lg/eie;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aaa;->b:Lg/tq;

    iget-object p1, p1, Lg/tq;->h:Lg/dyd;

    new-instance v0, Lg/gyt;

    invoke-direct {v0, p1}, Lg/gyt;-><init>(Lg/dyd;)V

    iput-object v0, p0, Lg/aaa;->d:Lg/gyt;

    new-instance v0, Lg/gyt;

    invoke-direct {v0, p1}, Lg/gyt;-><init>(Lg/dyd;)V

    iput-object v0, p0, Lg/aaa;->a:Lg/gyt;

    iput-object p2, p0, Lg/aaa;->c:Lg/eie;

    return-void
.end method


# virtual methods
.method public final e(Z)Ljava/lang/Long;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "This stopwatch is already stopped."

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/aaa;->d:Lg/gyt;

    iget-boolean v2, p1, Lg/gyt;->c:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lg/gyt;->b:Lg/dyd;

    invoke-virtual {v2}, Lg/dyd;->bt()J

    move-result-wide v2

    iget-boolean v4, p1, Lg/gyt;->c:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p1, Lg/gyt;->c:Z

    iget-wide v0, p1, Lg/gyt;->d:J

    iget-wide v4, p1, Lg/gyt;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lg/gyt;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lg/aaa;->a:Lg/gyt;

    iget-boolean v2, p1, Lg/gyt;->c:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lg/gyt;->b:Lg/dyd;

    invoke-virtual {v2}, Lg/dyd;->bt()J

    move-result-wide v2

    iget-boolean v4, p1, Lg/gyt;->c:Z

    if-eqz v4, :cond_2

    iput-boolean v0, p1, Lg/gyt;->c:Z

    iget-wide v0, p1, Lg/gyt;->d:J

    iget-wide v4, p1, Lg/gyt;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lg/gyt;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Lg/ejd;Lg/hm;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lg/aho;->c()Lg/gwg;

    move-result-object v0

    iget v1, p1, Lg/ejd;->a:I

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v2, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/aho;

    invoke-static {v2, v1}, Lg/aho;->f(Lg/aho;I)V

    iget-object p1, p1, Lg/ejd;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object v1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast v1, Lg/aho;

    invoke-static {v1, p1}, Lg/aho;->a(Lg/aho;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object p1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast p1, Lg/aho;

    invoke-static {p1, p2}, Lg/aho;->e(Lg/aho;Lg/hm;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lg/dtx;->f()V

    iget-object p1, v0, Lg/dtx;->d:Lg/fsu;

    check-cast p1, Lg/aho;

    invoke-static {p1, p3}, Lg/aho;->b(Lg/aho;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p4}, Lg/aaa;->e(Z)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lg/aaa;->b:Lg/tq;

    if-eqz p4, :cond_2

    :try_start_1
    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lg/eip;->a(Z)V

    invoke-virtual {p3}, Lg/eip;->b()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lg/dtx;->f()V

    iget-object p1, p3, Lg/dtx;->d:Lg/fsu;

    check-cast p1, Lg/dmh;

    invoke-static {p1, v1, v2}, Lg/dmh;->c(Lg/dmh;J)V

    :cond_1
    invoke-static {}, Lg/hd;->b()Lg/ari;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/ari;->a(Lg/gwg;)V

    invoke-virtual {p1}, Lg/dtx;->f()V

    iget-object p4, p1, Lg/dtx;->d:Lg/fsu;

    check-cast p4, Lg/hd;

    const/4 v0, 0x6

    invoke-static {p4, v0}, Lg/hd;->f(Lg/hd;I)V

    invoke-virtual {p1, p3}, Lg/ari;->b(Lg/eip;)V

    invoke-virtual {p1}, Lg/dtx;->g()Lg/fsu;

    move-result-object p1

    check-cast p1, Lg/hd;

    invoke-virtual {p2, p1}, Lg/tq;->ah(Lg/hd;)V

    return-void

    :cond_2
    invoke-static {}, Lg/efn;->c()Lg/bnn;

    move-result-object p3

    invoke-virtual {p3}, Lg/dtx;->f()V

    iget-object p4, p3, Lg/dtx;->d:Lg/fsu;

    check-cast p4, Lg/efn;

    invoke-virtual {v0}, Lg/dtx;->g()Lg/fsu;

    move-result-object v0

    check-cast v0, Lg/aho;

    invoke-static {p4, v0}, Lg/efn;->b(Lg/efn;Lg/aho;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Lg/dtx;->f()V

    iget-object p1, p3, Lg/dtx;->d:Lg/fsu;

    check-cast p1, Lg/efn;

    invoke-static {p1, v0, v1}, Lg/efn;->a(Lg/efn;J)V

    :cond_3
    iget-object p1, p2, Lg/tq;->b:Lg/ffr;

    invoke-virtual {p3}, Lg/dtx;->g()Lg/fsu;

    move-result-object p2

    check-cast p2, Lg/efn;

    invoke-virtual {p1, p2}, Lg/ffr;->aa(Lg/efn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public final g(Lg/ejd;)V
    .locals 3

    iget-object v0, p0, Lg/aaa;->b:Lg/tq;

    iget-object v1, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, v0, Lg/tq;->t:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lg/aaa;->c:Lg/eie;

    invoke-virtual {v0, p1}, Lg/eie;->t(Lg/ejd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    sget p1, Lg/gbs;->a:I

    return-void

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    sget p1, Lg/gbs;->a:I

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lg/aaa;->b:Lg/tq;

    invoke-static {v0}, Lg/tq;->af(Lg/tq;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/tq;->b:Lg/ffr;

    invoke-static {}, Lg/hd;->b()Lg/ari;

    move-result-object v1

    invoke-virtual {v1}, Lg/dtx;->f()V

    iget-object v2, v1, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/hd;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lg/hd;->f(Lg/hd;I)V

    invoke-static {}, Lg/aho;->c()Lg/gwg;

    move-result-object v2

    sget-object v3, Lg/hm;->zzbf:Lg/hm;

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v4, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v4, Lg/aho;

    invoke-static {v4, v3}, Lg/aho;->e(Lg/aho;Lg/hm;)V

    invoke-virtual {v1, v2}, Lg/ari;->a(Lg/gwg;)V

    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object v2

    invoke-virtual {v2, p1}, Lg/eip;->a(Z)V

    invoke-virtual {v2}, Lg/eip;->b()V

    invoke-virtual {v1, v2}, Lg/ari;->b(Lg/eip;)V

    invoke-virtual {v1}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/hd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/djs;

    invoke-virtual {v0, v1, v2}, Lg/ffr;->z(Lg/hd;Lg/djs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    sget v0, Lg/gbs;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/tq;->b:Lg/ffr;

    invoke-static {}, Lg/afw;->a()Lg/afw;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lg/fjq;->f()Lg/aqa;

    move-result-object v2

    iget-object v3, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/djs;

    invoke-virtual {v2, v3}, Lg/aqa;->a(Lg/djs;)V

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v3, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/fjq;

    invoke-static {v3, v1}, Lg/fjq;->d(Lg/fjq;Lg/afw;)V

    invoke-virtual {v2}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/fjq;

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gez;

    invoke-virtual {v0, v1}, Lg/gez;->h(Lg/fjq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :try_start_4
    sget v0, Lg/gbs;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    sget v0, Lg/gbs;->a:I

    :goto_0
    iget-object v0, p0, Lg/aaa;->b:Lg/tq;

    iget-object v1, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v2, v0, Lg/tq;->t:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, v0, Lg/tq;->t:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lg/tq;->ai(I)V

    invoke-virtual {v0}, Lg/tq;->al()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object p1, p0, Lg/aaa;->c:Lg/eie;

    invoke-virtual {p1}, Lg/eie;->v()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    sget p1, Lg/gbs;->a:I

    return-void

    :catchall_4
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_7
    monitor-exit v1

    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg/aaa;->b:Lg/tq;

    iget-object v1, p1, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lg/tq;->t:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    sget v0, Lg/euv;->a:I

    const-string v0, "com.android.vending.billing.IInAppBillingService"

    const/4 v2, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/agh;

    if-eqz v4, :cond_2

    move-object p2, v3

    check-cast p2, Lg/agh;

    goto :goto_0

    :cond_2
    new-instance v3, Lg/eaw;

    invoke-direct {v3, p2, v0, v2}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p2, v3

    :goto_0
    iput-object p2, p1, Lg/tq;->s:Lg/agh;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lg/gzm;

    invoke-direct {v3, v2, p0}, Lg/gzm;-><init>(ILjava/lang/Object;)V

    new-instance v6, Lg/dyn;

    const/16 p2, 0x1d

    invoke-direct {v6, p2, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lg/tq;->ax()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p1}, Lg/tq;->aw()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    const-wide/16 v4, 0x7530

    invoke-static/range {v3 .. v8}, Lg/tq;->ae(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lg/tq;->au()Lg/ejd;

    move-result-object p2

    sget-object v0, Lg/hm;->zzy:Lg/hm;

    invoke-virtual {p1, p2, v0}, Lg/tq;->bc(Lg/ejd;Lg/hm;)V

    invoke-virtual {p0, p2}, Lg/aaa;->g(Lg/ejd;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    sget p1, Lg/gbs;->a:I

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lg/aaa;->b:Lg/tq;

    invoke-static {v0}, Lg/tq;->af(Lg/tq;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/tq;->b:Lg/ffr;

    invoke-static {}, Lg/hd;->b()Lg/ari;

    move-result-object v1

    invoke-virtual {v1}, Lg/dtx;->f()V

    iget-object v2, v1, Lg/dtx;->d:Lg/fsu;

    check-cast v2, Lg/hd;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lg/hd;->f(Lg/hd;I)V

    invoke-static {}, Lg/aho;->c()Lg/gwg;

    move-result-object v2

    sget-object v3, Lg/hm;->zzbe:Lg/hm;

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v4, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v4, Lg/aho;

    invoke-static {v4, v3}, Lg/aho;->e(Lg/aho;Lg/hm;)V

    invoke-virtual {v1, v2}, Lg/ari;->a(Lg/gwg;)V

    invoke-static {}, Lg/dmh;->e()Lg/eip;

    move-result-object v2

    invoke-virtual {v2, p1}, Lg/eip;->a(Z)V

    invoke-virtual {v2}, Lg/eip;->b()V

    invoke-virtual {v1, v2}, Lg/ari;->b(Lg/eip;)V

    invoke-virtual {v1}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/hd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/djs;

    invoke-virtual {v0, v1, v2}, Lg/ffr;->z(Lg/hd;Lg/djs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    sget v0, Lg/gbs;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/tq;->b:Lg/ffr;

    invoke-static {}, Lg/djl;->a()Lg/djl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {}, Lg/fjq;->f()Lg/aqa;

    move-result-object v2

    iget-object v3, v0, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Lg/djs;

    invoke-virtual {v2, v3}, Lg/aqa;->a(Lg/djs;)V

    invoke-virtual {v2}, Lg/dtx;->f()V

    iget-object v3, v2, Lg/dtx;->d:Lg/fsu;

    check-cast v3, Lg/fjq;

    invoke-static {v3, v1}, Lg/fjq;->c(Lg/fjq;Lg/djl;)V

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Lg/gez;

    invoke-virtual {v2}, Lg/dtx;->g()Lg/fsu;

    move-result-object v1

    check-cast v1, Lg/fjq;

    invoke-virtual {v0, v1}, Lg/gez;->h(Lg/fjq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    :try_start_4
    sget v0, Lg/gbs;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    sget v0, Lg/gbs;->a:I

    :goto_0
    iget-object v0, p0, Lg/aaa;->a:Lg/gyt;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lg/gyt;->d:J

    iput-boolean p1, v0, Lg/gyt;->c:Z

    invoke-virtual {v0}, Lg/gyt;->e()V

    iget-object v0, p0, Lg/aaa;->b:Lg/tq;

    iget-object v1, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v2, v0, Lg/tq;->t:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Lg/tq;->ai(I)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object p1, p0, Lg/aaa;->c:Lg/eie;

    invoke-virtual {p1}, Lg/eie;->v()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_1
    return-void

    :catchall_4
    sget p1, Lg/gbs;->a:I

    return-void

    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method
