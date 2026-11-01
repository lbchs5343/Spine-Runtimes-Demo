.class public final Lg/fth;
.super Lg/bkw;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final b:Lg/mb;

.field public final c:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/Semaphore;

.field public j:Lg/gwi;

.field public k:Lg/gwi;

.field public final l:Lg/mb;

.field public final m:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lg/fth;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lg/cyg;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/bkw;-><init>(Lg/cyg;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fth;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lg/fth;->h:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lg/fth;->m:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lg/fth;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lg/mb;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lg/mb;-><init>(Lg/fth;Ljava/lang/String;)V

    iput-object p1, p0, Lg/fth;->b:Lg/mb;

    new-instance p1, Lg/mb;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lg/mb;-><init>(Lg/fth;Ljava/lang/String;)V

    iput-object p1, p0, Lg/fth;->l:Lg/mb;

    return-void
.end method


# virtual methods
.method public final _e()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lg/fth;->j:Lg/gwi;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lg/bkw;->an()V

    new-instance v0, Lg/gfi;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lg/gfi;-><init>(Lg/fth;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lg/fth;->q(Lg/gfi;)V

    return-void
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lg/bkw;->an()V

    new-instance v0, Lg/gfi;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lg/gfi;-><init>(Lg/fth;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lg/fth;->q(Lg/gfi;)V

    return-void
.end method

.method public final q(Lg/gfi;)V
    .locals 3

    iget-object v0, p0, Lg/fth;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/fth;->m:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/fth;->j:Lg/gwi;

    if-nez p1, :cond_0

    new-instance p1, Lg/gwi;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lg/fth;->m:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lg/gwi;-><init>(Lg/fth;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lg/fth;->j:Lg/gwi;

    iget-object v1, p0, Lg/fth;->b:Lg/mb;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lg/fth;->j:Lg/gwi;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lg/gwi;->e()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lg/fth;->k:Lg/gwi;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Interrupted waiting for "

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    invoke-virtual {v1, p5}, Lg/fth;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->g:Lg/dvb;

    const-string p3, "Timed out waiting for "

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :try_start_3
    iget-object p2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p2, Lg/cyg;

    iget-object p2, p2, Lg/cyg;->z:Lg/bgm;

    invoke-static {p2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p2, p2, Lg/bgm;->g:Lg/dvb;

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final t(Ljava/util/concurrent/Callable;)Lg/gfi;
    .locals 2

    invoke-virtual {p0}, Lg/bkw;->an()V

    new-instance v0, Lg/gfi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/gfi;-><init>(Lg/fth;Ljava/util/concurrent/Callable;Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lg/fth;->j:Lg/gwi;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lg/fth;->m:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lg/fth;->q(Lg/gfi;)V

    return-object v0
.end method

.method public final u()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lg/fth;->j:Lg/gwi;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lg/bkw;->an()V

    new-instance v0, Lg/gfi;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lg/gfi;-><init>(Lg/fth;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lg/fth;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lg/fth;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lg/fth;->k:Lg/gwi;

    if-nez v0, :cond_0

    new-instance v0, Lg/gwi;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lg/fth;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lg/gwi;-><init>(Lg/fth;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lg/fth;->k:Lg/gwi;

    iget-object v1, p0, Lg/fth;->l:Lg/mb;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lg/fth;->k:Lg/gwi;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lg/gwi;->e()V

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
