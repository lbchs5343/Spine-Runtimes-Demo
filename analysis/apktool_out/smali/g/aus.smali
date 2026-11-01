.class public final Lg/aus;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $delegate:Lg/cg;

.field final synthetic $workConstraintsTracker:Lg/vn;

.field final synthetic $workSpec:Lg/fkj;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/aus;->$delegate:Lg/cg;

    iput-object p2, p0, Lg/aus;->$workConstraintsTracker:Lg/vn;

    iput-object p3, p0, Lg/aus;->$workSpec:Lg/fkj;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/aus;->label:I

    const/4 v2, 0x0

    const/16 v3, -0x100

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lg/aus;->L$2:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/dta;

    iget-object v0, p0, Lg/aus;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/dcy;

    iget-object v0, p0, Lg/aus;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    :try_start_0
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/aus;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/hcc;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v1, p0, Lg/aus;->$delegate:Lg/cg;

    invoke-virtual {v1}, Lg/cg;->startWork()Lg/dcy;

    move-result-object v9

    const-string v1, "delegate.startWork()"

    invoke-static {v9, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lg/aq;

    iget-object v6, p0, Lg/aus;->$workConstraintsTracker:Lg/vn;

    iget-object v7, p0, Lg/aus;->$workSpec:Lg/fkj;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lg/aq;-><init>(Lg/vn;Lg/fkj;Ljava/util/concurrent/atomic/AtomicInteger;Lg/dcy;Lg/bdp;)V

    const/4 v1, 0x3

    invoke-static {p1, v2, v2, v5, v1}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    move-result-object v1

    :try_start_1
    iput-object v8, p0, Lg/aus;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lg/aus;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lg/aus;->L$2:Ljava/lang/Object;

    iput v4, p0, Lg/aus;->label:I

    invoke-static {v9, p0}, Lg/erl;->am(Lg/dcy;Lg/avu;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v6, v8

    move-object v5, v9

    :goto_0
    :try_start_2
    check-cast p1, Lg/dea;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1, v2}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    return-object p1

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v6, v8

    move-object v5, v9

    goto :goto_2

    :goto_1
    :try_start_3
    sget-object v0, Lg/goy;->a:Ljava/lang/String;

    iget-object v0, p0, Lg/aus;->$delegate:Lg/cg;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :goto_2
    sget-object v0, Lg/goy;->a:Ljava/lang/String;

    iget-object v0, p0, Lg/aus;->$delegate:Lg/cg;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    new-instance p1, Lg/bsc;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p1, v0}, Lg/bsc;-><init>(I)V

    throw p1

    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    invoke-interface {v1, v2}, Lg/dta;->_bi(Ljava/util/concurrent/CancellationException;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/aus;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/aus;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/aus;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 4

    new-instance v0, Lg/aus;

    iget-object v1, p0, Lg/aus;->$delegate:Lg/cg;

    iget-object v2, p0, Lg/aus;->$workConstraintsTracker:Lg/vn;

    iget-object v3, p0, Lg/aus;->$workSpec:Lg/fkj;

    invoke-direct {v0, v1, v2, v3, p2}, Lg/aus;-><init>(Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V

    iput-object p1, v0, Lg/aus;->L$0:Ljava/lang/Object;

    return-object v0
.end method
