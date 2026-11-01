.class public final Lg/fxb;
.super Lg/awt;
.source "SourceFile"


# static fields
.field public static at:Lg/fxb;

.field public static final au:Ljava/lang/Object;

.field public static av:Lg/fxb;


# instance fields
.field public final aw:Lg/flk;

.field public final ax:Lg/egu;

.field public final ay:Ljava/util/List;

.field public final az:Landroidx/work/impl/WorkDatabase;

.field public final ba:Lg/evf;

.field public final bb:Lg/ccc;

.field public final bc:Landroid/content/Context;

.field public final bd:Lg/fzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lg/fxb;->av:Lg/fxb;

    sput-object v0, Lg/fxb;->at:Lg/fxb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fxb;->au:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/flk;Lg/ccc;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lg/egu;Lg/fzn;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lg/ayr;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lg/cyl;

    iget v1, p2, Lg/flk;->a:I

    invoke-direct {v0, v1}, Lg/cyl;-><init>(I)V

    sget-object v1, Lg/cyl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lg/cyl;->c:Lg/cyl;

    if-nez v2, :cond_2

    sput-object v0, Lg/cyl;->c:Lg/cyl;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lg/fxb;->bc:Landroid/content/Context;

    iput-object p3, p0, Lg/fxb;->bb:Lg/ccc;

    iput-object p4, p0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Lg/fxb;->ax:Lg/egu;

    iput-object p7, p0, Lg/fxb;->bd:Lg/fzn;

    iput-object p2, p0, Lg/fxb;->aw:Lg/flk;

    iput-object p5, p0, Lg/fxb;->ay:Ljava/util/List;

    check-cast p3, Lg/gkr;

    iget-object p7, p3, Lg/gkr;->a:Ljava/lang/Object;

    check-cast p7, Lg/cpk;

    const-string v0, "taskExecutor.taskCoroutineDispatcher"

    invoke-static {p7, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7}, Lg/aky;->q(Lg/boj;)Lg/dlg;

    move-result-object p7

    new-instance v0, Lg/evf;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p4}, Lg/evf;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/fxb;->ba:Lg/evf;

    iget-object v0, p3, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    sget v1, Lg/fje;->a:I

    new-instance v1, Lg/fkv;

    invoke-direct {v1, v0, p5, p2, p4}, Lg/fkv;-><init>(Lg/aqv;Ljava/util/List;Lg/flk;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {p6, v1}, Lg/egu;->p(Lg/eiv;)V

    new-instance p5, Lg/ejk;

    invoke-direct {p5, p1, p0}, Lg/ejk;-><init>(Landroid/content/Context;Lg/fxb;)V

    invoke-virtual {p3, p5}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    sget-object p3, Lg/ciu;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lg/bz;->a(Landroid/content/Context;Lg/flk;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 p4, 0x0

    invoke-static {p4, p3}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object p3

    iget-object v2, p2, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    const-string p5, "workspec"

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lg/fal;

    invoke-direct {v4, p2, p4, p3}, Lg/fal;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, Lg/fmr;

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lg/fmr;-><init>(ZLg/gac;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V

    new-instance p2, Lg/edl;

    invoke-direct {p2, v0}, Lg/edl;-><init>(Lg/fmr;)V

    new-instance p3, Lg/gdh;

    const/4 p5, 0x4

    const/4 p6, 0x0

    invoke-direct {p3, p5, p6}, Lg/avu;-><init>(ILg/bdp;)V

    new-instance p5, Lg/fqc;

    invoke-direct {p5, p2, p3}, Lg/fqc;-><init>(Lg/edl;Lg/gdh;)V

    sget-object p2, Lg/bqt;->DROP_OLDEST:Lg/bqt;

    new-instance p3, Lg/dvl;

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    invoke-direct {p3, p5, v0, p4, p2}, Lg/bjx;-><init>(Lg/fqc;Lg/boj;ILg/bqt;)V

    invoke-static {p3}, Lg/gs;->aq(Lg/dqx;)Lg/bhw;

    move-result-object p2

    new-instance p3, Lg/zr;

    invoke-direct {p3, p1, p6}, Lg/zr;-><init>(Landroid/content/Context;Lg/bdp;)V

    new-instance p1, Lg/fdf;

    invoke-direct {p1, p2, p3}, Lg/fdf;-><init>(Lg/bhw;Lg/bto;)V

    new-instance p2, Lg/gwq;

    invoke-direct {p2, p1, p6}, Lg/gwq;-><init>(Lg/dqx;Lg/bdp;)V

    const/4 p1, 0x3

    invoke-static {p7, p6, p6, p2, p1}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static be(Landroid/content/Context;)Lg/fxb;
    .locals 3

    sget-object v0, Lg/fxb;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lg/fxb;->bf()Lg/fxb;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Lg/dfn;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lg/dfn;

    check-cast v1, Lcn/trinea/developertools/MyApplication;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/bmr;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lg/bmr;-><init>(I)V

    new-instance v2, Lg/flk;

    invoke-direct {v2, v1}, Lg/flk;-><init>(Lg/bmr;)V

    invoke-static {p0, v2}, Lg/fxb;->bg(Landroid/content/Context;Lg/flk;)V

    invoke-static {p0}, Lg/fxb;->be(Landroid/content/Context;)Lg/fxb;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bf()Lg/fxb;
    .locals 2

    sget-object v0, Lg/fxb;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fxb;->av:Lg/fxb;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lg/fxb;->at:Lg/fxb;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bg(Landroid/content/Context;Lg/flk;)V
    .locals 3

    sget-object v0, Lg/fxb;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fxb;->av:Lg/fxb;

    if-eqz v1, :cond_1

    sget-object v2, Lg/fxb;->at:Lg/fxb;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lg/fxb;->at:Lg/fxb;

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lg/afo;->ba(Landroid/content/Context;Lg/flk;)Lg/fxb;

    move-result-object p0

    sput-object p0, Lg/fxb;->at:Lg/fxb;

    :cond_2
    sget-object p0, Lg/fxb;->at:Lg/fxb;

    sput-object p0, Lg/fxb;->av:Lg/fxb;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final bh(Lg/bbt;Lg/dqj;)Lg/gev;
    .locals 7

    sget-object v0, Lg/bbt;->UPDATE:Lg/bbt;

    const-string v3, "opu"

    if-ne p1, v0, :cond_0

    const-string p1, "workRequest"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fxb;->aw:Lg/flk;

    iget-object p1, p1, Lg/flk;->h:Lg/ao;

    const-string v0, "enqueueUniquePeriodic_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/fxb;->bb:Lg/ccc;

    check-cast v1, Lg/gkr;

    iget-object v1, v1, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v1, Lg/aqv;

    const-string v2, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lg/zu;

    invoke-direct {v2, p0, p2}, Lg/zu;-><init>(Lg/fxb;Lg/dqj;)V

    invoke-static {p1, v0, v1, v2}, Lg/afo;->ag(Lg/ao;Ljava/lang/String;Lg/aqv;Lg/cvw;)Lg/gev;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lg/bbt;->KEEP:Lg/bbt;

    if-ne p1, v0, :cond_1

    sget-object p1, Lg/dne;->KEEP:Lg/dne;

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lg/dne;->REPLACE:Lg/dne;

    goto :goto_0

    :goto_1
    new-instance v1, Lg/pc;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lg/pc;-><init>(Lg/fxb;Ljava/lang/String;Lg/dne;Ljava/util/List;I)V

    invoke-virtual {v1}, Lg/pc;->j()Lg/gev;

    move-result-object p1

    return-object p1
.end method

.method public final bi()V
    .locals 4

    iget-object v0, p0, Lg/fxb;->aw:Lg/flk;

    iget-object v0, v0, Lg/flk;->h:Lg/ao;

    const-string v1, "ReschedulingWork"

    new-instance v2, Lg/hv;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lg/hv;-><init>(ILjava/lang/Object;)V

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/baf;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v1}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lg/hv;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v1
.end method

.method public final bj(Ljava/lang/String;)Lg/gev;
    .locals 4

    iget-object v0, p0, Lg/fxb;->aw:Lg/flk;

    iget-object v0, v0, Lg/flk;->h:Lg/ao;

    const-string v1, "CancelWorkByTag_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lg/fxb;->bb:Lg/ccc;

    check-cast v2, Lg/gkr;

    iget-object v2, v2, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v2, Lg/aqv;

    const-string v3, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lg/ftt;

    invoke-direct {v3, p0, p1}, Lg/ftt;-><init>(Lg/fxb;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lg/afo;->ag(Lg/ao;Ljava/lang/String;Lg/aqv;Lg/cvw;)Lg/gev;

    move-result-object p1

    return-object p1
.end method

.method public final bk()V
    .locals 2

    sget-object v0, Lg/fxb;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
