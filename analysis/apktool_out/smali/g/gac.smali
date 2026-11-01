.class public abstract Lg/gac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aa:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public ab:Ljava/util/concurrent/Executor;

.field public final ac:Ljava/lang/ThreadLocal;

.field public ad:Lg/aqv;

.field public ae:Ljava/util/List;

.field public final t:Ljava/util/LinkedHashMap;

.field public final u:Ljava/util/Map;

.field public v:Lg/fgd;

.field public final w:Ljava/util/LinkedHashMap;

.field public final x:Lg/dbe;

.field public volatile y:Lg/crd;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lg/gac;->p()Lg/dbe;

    move-result-object v0

    iput-object v0, p0, Lg/gac;->x:Lg/dbe;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/gac;->t:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lg/gac;->aa:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lg/gac;->ac:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(mutableMapOf())"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/gac;->u:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/gac;->w:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static af(Ljava/lang/Class;Lg/fgd;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Lg/mu;

    if-eqz v0, :cond_1

    check-cast p1, Lg/mu;

    invoke-interface {p1}, Lg/mu;->a()Lg/fgd;

    move-result-object p1

    invoke-static {p0, p1}, Lg/gac;->af(Ljava/lang/Class;Lg/fgd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ag(Lg/fxn;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Lg/gac;->aj()V

    invoke-virtual {p0}, Lg/gac;->al()V

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/crd;->i(Lg/fxn;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final ah()V
    .locals 1

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0}, Lg/crd;->h()V

    return-void
.end method

.method public final ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lg/gac;->an()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lg/gac;->am()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lg/gac;->am()V

    throw p1
.end method

.method public final aj()V
    .locals 2

    iget-boolean v0, p0, Lg/gac;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ak(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lg/gac;->an()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lg/gac;->am()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lg/gac;->am()V

    throw p1
.end method

.method public final al()V
    .locals 2

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0}, Lg/crd;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gac;->ac:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final am()V
    .locals 4

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0}, Lg/crd;->g()V

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    invoke-virtual {v0}, Lg/crd;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gac;->x:Lg/dbe;

    iget-object v1, v0, Lg/dbe;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/dbe;->g:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v1, v1, Lg/gac;->ab:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/dbe;->i:Lg/byd;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lg/bff;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method public final an()V
    .locals 2

    invoke-virtual {p0}, Lg/gac;->aj()V

    invoke-virtual {p0}, Lg/gac;->aj()V

    invoke-virtual {p0}, Lg/gac;->ao()Lg/fgd;

    move-result-object v0

    invoke-interface {v0}, Lg/fgd;->i()Lg/crd;

    move-result-object v0

    iget-object v1, p0, Lg/gac;->x:Lg/dbe;

    invoke-virtual {v1, v0}, Lg/dbe;->o(Lg/crd;)V

    invoke-virtual {v0}, Lg/crd;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/crd;->n()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/crd;->l()V

    return-void
.end method

.method public final ao()Lg/fgd;
    .locals 1

    iget-object v0, p0, Lg/gac;->v:Lg/fgd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "internalOpenHelper"

    invoke-static {v0}, Lg/bff;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Ljava/util/Set;
    .locals 1

    sget-object v0, Lg/gpk;->a:Lg/gpk;

    return-object v0
.end method

.method public abstract p()Lg/dbe;
.end method

.method public abstract q(Lg/hda;)Lg/fgd;
.end method

.method public r(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lg/fai;->a:Lg/fai;

    return-object p1
.end method

.method public s()Ljava/util/Map;
    .locals 1

    sget-object v0, Lg/dyq;->a:Lg/dyq;

    return-object v0
.end method
