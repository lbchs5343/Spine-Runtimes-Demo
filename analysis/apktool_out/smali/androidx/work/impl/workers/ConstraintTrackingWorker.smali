.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/WorkerParameters;

    return-void
.end method

.method public static final e(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/w;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p4, Landroidx/work/impl/workers/a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/work/impl/workers/a;

    iget v1, v0, Landroidx/work/impl/workers/a;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/impl/workers/a;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/impl/workers/a;

    invoke-direct {v0, p0, p4}, Landroidx/work/impl/workers/a;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)V

    :goto_0
    iget-object p0, v0, Landroidx/work/impl/workers/a;->result:Ljava/lang/Object;

    sget-object p4, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, v0, Landroidx/work/impl/workers/a;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lg/eg;->k(Ljava/lang/Object;)V

    new-instance p0, Lg/aus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lg/aus;-><init>(Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V

    iput v2, v0, Landroidx/work/impl/workers/a;->label:I

    new-instance p1, Lg/azc;

    invoke-interface {v0}, Lg/bdp;->getContext()Lg/boj;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {p1, p1, p0}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_3

    return-object p4

    :cond_3
    :goto_1
    const-string p1, "delegate: ListenableWork\u2026.cancel()\n        }\n    }"

    invoke-static {p0, p1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final f(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/WorkerParameters;

    instance-of v1, p1, Landroidx/work/impl/workers/b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/work/impl/workers/b;

    iget v2, v1, Landroidx/work/impl/workers/b;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/work/impl/workers/b;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/work/impl/workers/b;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/workers/b;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/w;)V

    :goto_0
    iget-object p1, v1, Landroidx/work/impl/workers/b;->result:Ljava/lang/Object;

    sget-object v2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v3, v1, Landroidx/work/impl/workers/b;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Landroidx/work/impl/workers/b;->L$1:Ljava/lang/Object;

    check-cast p0, Lg/cg;

    iget-object v0, v1, Landroidx/work/impl/workers/b;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, p0

    move-object p0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v10, p0

    move-object p0, v1

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg/cg;->getInputData()Lg/dwa;

    move-result-object p1

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {p1, v3}, Lg/dwa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lg/fxb;->be(Landroid/content/Context;)Lg/fxb;

    move-result-object v3

    const-string v5, "getInstance(applicationContext)"

    invoke-static {v3, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v5

    invoke-virtual {p0}, Lg/cg;->getId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id.toString()"

    invoke-static {v6, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v12

    if-nez v12, :cond_4

    new-instance p0, Lg/bhr;

    invoke-direct {p0}, Lg/bhr;-><init>()V

    return-object p0

    :cond_4
    new-instance v11, Lg/vn;

    iget-object v5, v3, Lg/fxb;->bd:Lg/fzn;

    const-string v6, "workManagerImpl.trackers"

    invoke-static {v5, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v5}, Lg/vn;-><init>(Lg/fzn;)V

    invoke-virtual {v11, v12}, Lg/vn;->b(Lg/fkj;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object p0, Lg/goy;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lg/evc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_5
    sget-object v5, Lg/goy;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {p0}, Lg/cg;->getWorkerFactory()Lg/gsd;

    move-result-object v5

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "applicationContext"

    invoke-static {v6, v7}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, p1, v0}, Lg/gsd;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lg/cg;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, v0, Landroidx/work/WorkerParameters;->a:Lg/gkr;

    iget-object p1, p1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p1, Lg/bxc;

    const-string v0, "workerParameters.taskExecutor.mainThreadExecutor"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    invoke-static {p1}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object p1

    new-instance v8, Lg/cbp;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x0

    move-object v9, p0

    :try_start_3
    invoke-direct/range {v8 .. v13}, Lg/cbp;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V

    iput-object v9, v1, Landroidx/work/impl/workers/b;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/work/impl/workers/b;->L$1:Ljava/lang/Object;

    iput v4, v1, Landroidx/work/impl/workers/b;->label:I

    invoke-static {p1, v8, v1}, Lg/baf;->an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object p0, v9

    :goto_1
    :try_start_4
    check-cast p1, Lg/dea;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v0

    move-object p0, v9

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v9, p0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lg/cg;->isStopped()Z

    move-result v0

    if-nez v0, :cond_7

    instance-of v0, p1, Lg/bsc;

    if-eqz v0, :cond_a

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_8

    const/16 p0, -0x200

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lg/cg;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lg/cg;->getStopReason()I

    move-result p0

    goto :goto_4

    :cond_9
    instance-of p0, p1, Lg/bsc;

    if-eqz p0, :cond_c

    move-object p0, p1

    check-cast p0, Lg/bsc;

    invoke-virtual {p0}, Lg/bsc;->a()I

    move-result p0

    :goto_4
    invoke-virtual {v10, p0}, Lg/cg;->stop(I)V

    :cond_a
    instance-of p0, p1, Lg/bsc;

    if-eqz p0, :cond_b

    new-instance p0, Lg/evc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_5

    :cond_b
    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unreachable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    sget-object p0, Lg/goy;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v3, Lg/fxb;->aw:Lg/flk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lg/bhr;

    invoke-direct {p0}, Lg/bhr;-><init>()V

    :goto_5
    return-object p0

    :cond_d
    :goto_6
    sget-object p0, Lg/goy;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    const-string v0, "No worker to delegate to."

    invoke-virtual {p1, p0, v0}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lg/bhr;

    invoke-direct {p0}, Lg/bhr;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final c(Lg/enj;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg/cg;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "backgroundExecutor"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object v0

    new-instance v1, Lg/haa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/haa;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/bdp;)V

    invoke-static {v0, v1, p1}, Lg/baf;->an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
