.class public final Lg/dvo;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $foregroundUpdater:Lg/fbt;

.field final synthetic $worker:Lg/cg;

.field label:I

.field final synthetic this$0:Lg/dly;


# direct methods
.method public constructor <init>(Lg/dly;Lg/cg;Lg/fbt;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/dvo;->this$0:Lg/dly;

    iput-object p2, p0, Lg/dvo;->$worker:Lg/cg;

    iput-object p3, p0, Lg/dvo;->$foregroundUpdater:Lg/fbt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/dvo;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/dvo;->this$0:Lg/dly;

    iget-object v8, p1, Lg/dly;->k:Landroid/content/Context;

    iget-object v6, p1, Lg/dly;->g:Lg/fkj;

    iget-object v5, p0, Lg/dvo;->$worker:Lg/cg;

    iget-object v7, p0, Lg/dvo;->$foregroundUpdater:Lg/fbt;

    iget-object p1, p1, Lg/dly;->f:Lg/gkr;

    iput v3, p0, Lg/dvo;->label:I

    sget v1, Lg/nx;->a:I

    iget-boolean v1, v6, Lg/fkj;->s:Z

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast p1, Lg/bxc;

    const-string v1, "taskExecutor.mainThreadExecutor"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/ffb;->cc(Ljava/util/concurrent/Executor;)Lg/cpk;

    move-result-object p1

    new-instance v4, Lg/cbg;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lg/cbg;-><init>(Lg/cg;Lg/fkj;Lg/fbt;Landroid/content/Context;Lg/bdp;)V

    invoke-static {p1, v4, p0}, Lg/baf;->an(Lg/erz;Lg/bto;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    move-object v3, p1

    :cond_4
    :goto_0
    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lg/bbv;->a:Ljava/lang/String;

    iget-object p1, p0, Lg/dvo;->this$0:Lg/dly;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    iget-object p1, p1, Lg/dly;->g:Lg/fkj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/dvo;->$worker:Lg/cg;

    invoke-virtual {p1}, Lg/cg;->startWork()Lg/dcy;

    move-result-object p1

    const-string v1, "worker.startWork()"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/dvo;->$worker:Lg/cg;

    iput v2, p0, Lg/dvo;->label:I

    invoke-static {p1, v1, p0}, Lg/bbv;->b(Lg/dcy;Lg/cg;Lg/avu;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/dvo;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/dvo;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/dvo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 3

    new-instance p1, Lg/dvo;

    iget-object v0, p0, Lg/dvo;->this$0:Lg/dly;

    iget-object v1, p0, Lg/dvo;->$worker:Lg/cg;

    iget-object v2, p0, Lg/dvo;->$foregroundUpdater:Lg/fbt;

    invoke-direct {p1, v0, v1, v2, p2}, Lg/dvo;-><init>(Lg/dly;Lg/cg;Lg/fbt;Lg/bdp;)V

    return-object p1
.end method
