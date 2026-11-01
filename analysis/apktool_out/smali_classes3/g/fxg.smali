.class public final Lg/fxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csp;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lg/csp;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p3, p0, Lg/fxg;->b:I

    iput-object p1, p0, Lg/fxg;->a:Lg/csp;

    iput-object p2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 5

    iget-object v0, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg/fxg;->a:Lg/csp;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/gad;->n:Lg/tw;

    invoke-virtual {v3, v2, v4}, Lg/dsd;->k(Ljava/lang/String;Lg/tw;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg/fxg;->a:Lg/csp;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/gad;->ag:Lg/tw;

    invoke-virtual {v3, v2, v4}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final f()V
    .locals 6

    iget-object v0, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg/fxg;->a:Lg/csp;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/gad;->h:Lg/tw;

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lg/dsd;->b:Lg/auz;

    iget-object v5, v4, Lg/tw;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Lg/auz;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final g()V
    .locals 5

    iget-object v0, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg/fxg;->a:Lg/csp;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/gad;->ae:Lg/tw;

    invoke-virtual {v3, v2, v4}, Lg/dsd;->o(Ljava/lang/String;Lg/tw;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/fxg;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lg/fxg;->a:Lg/csp;

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lg/gad;->bf:Lg/tw;

    invoke-virtual {v3, v2, v4}, Lg/dsd;->p(Ljava/lang/String;Lg/tw;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lg/fxg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lg/fxg;->d()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lg/fxg;->g()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lg/fxg;->f()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lg/fxg;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
