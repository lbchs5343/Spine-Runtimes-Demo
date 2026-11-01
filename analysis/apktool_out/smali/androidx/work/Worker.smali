.class public abstract Landroidx/work/Worker;
.super Lg/cg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lg/cg;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public abstract doWork()Lg/dea;
.end method

.method public getForegroundInfo()Lg/dju;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getForegroundInfoAsync()Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/dcy;"
        }
    .end annotation

    invoke-virtual {p0}, Lg/cg;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "backgroundExecutor"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg/ezk;

    invoke-direct {v1, p0}, Lg/ezk;-><init>(Landroidx/work/Worker;)V

    new-instance v2, Lg/ftr;

    invoke-direct {v2, v0, v1}, Lg/ftr;-><init>(Ljava/util/concurrent/Executor;Lg/cvw;)V

    invoke-static {v2}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object v0

    return-object v0
.end method

.method public final startWork()Lg/dcy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/dcy;"
        }
    .end annotation

    invoke-virtual {p0}, Lg/cg;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "backgroundExecutor"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg/dje;

    invoke-direct {v1, p0}, Lg/dje;-><init>(Landroidx/work/Worker;)V

    new-instance v2, Lg/ftr;

    invoke-direct {v2, v0, v1}, Lg/ftr;-><init>(Ljava/util/concurrent/Executor;Lg/cvw;)V

    invoke-static {v2}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object v0

    return-object v0
.end method
