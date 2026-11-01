.class public final Lg/ajt;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $$this$flow:Lg/fjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fjs;"
        }
    .end annotation
.end field

.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $db:Lg/gac;

.field final synthetic $inTransaction:Z

.field final synthetic $tableNames:[Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLg/gac;Lg/fjs;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V
    .locals 0

    iput-boolean p1, p0, Lg/ajt;->$inTransaction:Z

    iput-object p2, p0, Lg/ajt;->$db:Lg/gac;

    iput-object p3, p0, Lg/ajt;->$$this$flow:Lg/fjs;

    iput-object p4, p0, Lg/ajt;->$tableNames:[Ljava/lang/String;

    iput-object p5, p0, Lg/ajt;->$callable:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/ajt;->label:I

    sget-object v2, Lg/dgi;->a:Lg/dgi;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/ajt;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/hcc;

    const/4 v1, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lg/eg;->r(ILg/bqt;I)Lg/djo;

    move-result-object v9

    new-instance v8, Lg/aol;

    iget-object v1, p0, Lg/ajt;->$tableNames:[Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Lg/aol;-><init>([Ljava/lang/String;Lg/djo;)V

    invoke-interface {v9, v2}, Lg/cvu;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lg/hcc;->a()Lg/boj;

    move-result-object v1

    sget-object v4, Lg/boq;->a:Lg/bli;

    invoke-interface {v1, v4}, Lg/boj;->_x(Lg/efi;)Lg/erz;

    move-result-object v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lg/ajt;->$inTransaction:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lg/ajt;->$db:Lg/gac;

    iget-object v4, v1, Lg/gac;->u:Ljava/util/Map;

    const-string v6, "TransactionDispatcher"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v1, v1, Lg/gac;->ad:Lg/aqv;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "internalTransactionExecutor"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_0
    check-cast v7, Lg/cpk;

    :goto_1
    move-object v1, v7

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lg/ajt;->$db:Lg/gac;

    iget-object v4, v1, Lg/gac;->u:Ljava/util/Map;

    const-string v6, "QueryDispatcher"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v1, v1, Lg/gac;->ab:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p1, "internalQueryExecutor"

    invoke-static {p1}, Lg/bff;->v(Ljava/lang/String;)V

    throw v5

    :cond_6
    :goto_2
    check-cast v7, Lg/cpk;

    goto :goto_1

    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lg/eg;->r(ILg/bqt;I)Lg/djo;

    move-result-object v11

    new-instance v6, Lg/fuf;

    iget-object v7, p0, Lg/ajt;->$db:Lg/gac;

    iget-object v10, p0, Lg/ajt;->$callable:Ljava/util/concurrent/Callable;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lg/fuf;-><init>(Lg/gac;Lg/aol;Lg/bfl;Ljava/util/concurrent/Callable;Lg/bfl;Lg/bdp;)V

    const/4 v4, 0x2

    invoke-static {p1, v1, v5, v6, v4}, Lg/baf;->al(Lg/hcc;Lg/cpk;Lg/dwt;Lg/bto;I)Lg/fe;

    iget-object p1, p0, Lg/ajt;->$$this$flow:Lg/fjs;

    iput v3, p0, Lg/ajt;->label:I

    invoke-static {p1, v11, v3, p0}, Lg/kj;->ac(Lg/fjs;Lg/bfl;ZLg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, v2

    :goto_4
    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    return-object v2

    :cond_9
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/ajt;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/ajt;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/ajt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 7

    new-instance v0, Lg/ajt;

    iget-boolean v1, p0, Lg/ajt;->$inTransaction:Z

    iget-object v2, p0, Lg/ajt;->$db:Lg/gac;

    iget-object v3, p0, Lg/ajt;->$$this$flow:Lg/fjs;

    iget-object v4, p0, Lg/ajt;->$tableNames:[Ljava/lang/String;

    iget-object v5, p0, Lg/ajt;->$callable:Ljava/util/concurrent/Callable;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lg/ajt;-><init>(ZLg/gac;Lg/fjs;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lg/bdp;)V

    iput-object p1, v0, Lg/ajt;->L$0:Ljava/lang/Object;

    return-object v0
.end method
