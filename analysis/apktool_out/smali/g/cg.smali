.class public abstract Lg/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public g:Z

.field public final h:Landroid/content/Context;

.field public final i:Landroidx/work/WorkerParameters;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lg/cg;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lg/cg;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lg/cg;->h:Landroid/content/Context;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public abstract getForegroundInfoAsync()Lg/dcy;
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->e:Ljava/util/UUID;

    return-object v0
.end method

.method public final getInputData()Lg/dwa;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->h:Lg/dwa;

    return-object v0
.end method

.method public final getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->c:Lg/dsp;

    iget-object v0, v0, Lg/dsp;->c:Landroid/net/Network;

    return-object v0
.end method

.method public final getRunAttemptCount()I
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget v0, v0, Landroidx/work/WorkerParameters;->d:I

    return v0
.end method

.method public final getStopReason()I
    .locals 1

    iget-object v0, p0, Lg/cg;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->j:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTaskExecutor()Lg/ccc;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->a:Lg/gkr;

    return-object v0
.end method

.method public final getTriggeredContentAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->c:Lg/dsp;

    iget-object v0, v0, Lg/dsp;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getTriggeredContentUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->c:Lg/dsp;

    iget-object v0, v0, Lg/dsp;->b:Ljava/util/List;

    return-object v0
.end method

.method public getWorkerFactory()Lg/gsd;
    .locals 1

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->g:Lg/gjq;

    return-object v0
.end method

.method public final isStopped()Z
    .locals 2

    iget-object v0, p0, Lg/cg;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, -0x100

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lg/cg;->g:Z

    return v0
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public final setForegroundAsync(Lg/dju;)Lg/dcy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dju;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Lg/dcr;

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lg/cg;->getId()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Lg/dcr;->a:Lg/gkr;

    iget-object v3, v3, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v3, Lg/aqv;

    new-instance v4, Lg/nz;

    invoke-direct {v4, v0, v2, p1, v1}, Lg/nz;-><init>(Lg/dcr;Ljava/util/UUID;Lg/dju;Landroid/content/Context;)V

    const-string p1, "<this>"

    invoke-static {v3, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/gkn;

    const/4 v0, 0x2

    const-string v1, "setForegroundAsync"

    invoke-direct {p1, v3, v1, v4, v0}, Lg/gkn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object p1

    return-object p1
.end method

.method public setProgressAsync(Lg/dwa;)Lg/dcy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dwa;",
            ")",
            "Lg/dcy;"
        }
    .end annotation

    iget-object v0, p0, Lg/cg;->i:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->i:Lg/cxy;

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Lg/cg;->getId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, v0, Lg/cxy;->c:Lg/gkr;

    iget-object v2, v2, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v2, Lg/aqv;

    new-instance v3, Lg/bi;

    invoke-direct {v3, v0, v1, p1}, Lg/bi;-><init>(Lg/cxy;Ljava/util/UUID;Lg/dwa;)V

    const-string p1, "<this>"

    invoke-static {v2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/gkn;

    const/4 v0, 0x2

    const-string v1, "updateProgress"

    invoke-direct {p1, v2, v1, v3, v0}, Lg/gkn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object p1

    return-object p1
.end method

.method public final setUsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cg;->g:Z

    return-void
.end method

.method public abstract startWork()Lg/dcy;
.end method

.method public final stop(I)V
    .locals 2

    iget-object v0, p0, Lg/cg;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/cg;->onStopped()V

    :cond_0
    return-void
.end method
