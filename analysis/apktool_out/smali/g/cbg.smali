.class public final Lg/cbg;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $foregroundUpdater:Lg/fbt;

.field final synthetic $spec:Lg/fkj;

.field final synthetic $worker:Lg/cg;

.field label:I


# direct methods
.method public constructor <init>(Lg/cg;Lg/fkj;Lg/fbt;Landroid/content/Context;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/cbg;->$worker:Lg/cg;

    iput-object p2, p0, Lg/cbg;->$spec:Lg/fkj;

    iput-object p3, p0, Lg/cbg;->$foregroundUpdater:Lg/fbt;

    iput-object p4, p0, Lg/cbg;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/cbg;->label:I

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/cbg;->$worker:Lg/cg;

    invoke-virtual {p1}, Lg/cg;->getForegroundInfoAsync()Lg/dcy;

    move-result-object p1

    const-string v1, "worker.getForegroundInfoAsync()"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/cbg;->$worker:Lg/cg;

    iput v3, p0, Lg/cbg;->label:I

    invoke-static {p1, v1, p0}, Lg/bbv;->b(Lg/dcy;Lg/cg;Lg/avu;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lg/dju;

    if-eqz p1, :cond_5

    sget v1, Lg/nx;->a:I

    iget-object v1, p0, Lg/cbg;->$spec:Lg/fkj;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    iget-object v1, v1, Lg/fkj;->u:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg/cbg;->$foregroundUpdater:Lg/fbt;

    iget-object v3, p0, Lg/cbg;->$context:Landroid/content/Context;

    iget-object v4, p0, Lg/cbg;->$worker:Lg/cg;

    invoke-virtual {v4}, Lg/cg;->getId()Ljava/util/UUID;

    move-result-object v4

    check-cast v1, Lg/dcr;

    iget-object v5, v1, Lg/dcr;->a:Lg/gkr;

    iget-object v5, v5, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v5, Lg/aqv;

    new-instance v6, Lg/nz;

    invoke-direct {v6, v1, v4, p1, v3}, Lg/nz;-><init>(Lg/dcr;Ljava/util/UUID;Lg/dju;Landroid/content/Context;)V

    const-string p1, "<this>"

    invoke-static {v5, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/gkn;

    const-string v1, "setForegroundAsync"

    invoke-direct {p1, v5, v1, v6, v2}, Lg/gkn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object p1

    iput v2, p0, Lg/cbg;->label:I

    invoke-static {p1, p0}, Lg/erl;->am(Lg/dcy;Lg/avu;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Worker was marked important ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cbg;->$spec:Lg/fkj;

    iget-object v0, v0, Lg/fkj;->u:Ljava/lang/String;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-static {p1, v0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/cbg;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/cbg;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/cbg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/cbg;

    iget-object v1, p0, Lg/cbg;->$worker:Lg/cg;

    iget-object v2, p0, Lg/cbg;->$spec:Lg/fkj;

    iget-object v3, p0, Lg/cbg;->$foregroundUpdater:Lg/fbt;

    iget-object v4, p0, Lg/cbg;->$context:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/cbg;-><init>(Lg/cg;Lg/fkj;Lg/fbt;Landroid/content/Context;Lg/bdp;)V

    return-object v0
.end method
