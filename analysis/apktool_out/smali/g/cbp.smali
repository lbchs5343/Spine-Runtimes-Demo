.class public final Lg/cbp;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $delegate:Lg/cg;

.field final synthetic $workConstraintsTracker:Lg/vn;

.field final synthetic $workSpec:Lg/fkj;

.field label:I

.field final synthetic this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/cbp;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Lg/cbp;->$delegate:Lg/cg;

    iput-object p3, p0, Lg/cbp;->$workConstraintsTracker:Lg/vn;

    iput-object p4, p0, Lg/cbp;->$workSpec:Lg/fkj;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/cbp;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    iget-object p1, p0, Lg/cbp;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, p0, Lg/cbp;->$delegate:Lg/cg;

    iget-object v3, p0, Lg/cbp;->$workConstraintsTracker:Lg/vn;

    iget-object v4, p0, Lg/cbp;->$workSpec:Lg/fkj;

    iput v2, p0, Lg/cbp;->label:I

    invoke-static {p1, v1, v3, v4, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/cbp;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/cbp;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/cbp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/cbp;

    iget-object v1, p0, Lg/cbp;->this$0:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v2, p0, Lg/cbp;->$delegate:Lg/cg;

    iget-object v3, p0, Lg/cbp;->$workConstraintsTracker:Lg/vn;

    iget-object v4, p0, Lg/cbp;->$workSpec:Lg/fkj;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/cbp;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lg/cg;Lg/vn;Lg/fkj;Lg/bdp;)V

    return-object v0
.end method
