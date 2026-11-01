.class public final Lg/aq;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $atomicReason:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $future:Lg/dcy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dcy;"
        }
    .end annotation
.end field

.field final synthetic $workConstraintsTracker:Lg/vn;

.field final synthetic $workSpec:Lg/fkj;

.field label:I


# direct methods
.method public constructor <init>(Lg/vn;Lg/fkj;Ljava/util/concurrent/atomic/AtomicInteger;Lg/dcy;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/aq;->$workConstraintsTracker:Lg/vn;

    iput-object p2, p0, Lg/aq;->$workSpec:Lg/fkj;

    iput-object p3, p0, Lg/aq;->$atomicReason:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lg/aq;->$future:Lg/dcy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/aq;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/aq;->$workConstraintsTracker:Lg/vn;

    iget-object v1, p0, Lg/aq;->$workSpec:Lg/fkj;

    iput v2, p0, Lg/aq;->label:I

    invoke-static {p1, v1, p0}, Lg/goy;->b(Lg/vn;Lg/fkj;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lg/aq;->$atomicReason:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lg/aq;->$future:Lg/dcy;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/aq;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/aq;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/aq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 6

    new-instance v0, Lg/aq;

    iget-object v1, p0, Lg/aq;->$workConstraintsTracker:Lg/vn;

    iget-object v2, p0, Lg/aq;->$workSpec:Lg/fkj;

    iget-object v3, p0, Lg/aq;->$atomicReason:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lg/aq;->$future:Lg/dcy;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg/aq;-><init>(Lg/vn;Lg/fkj;Ljava/util/concurrent/atomic/AtomicInteger;Lg/dcy;Lg/bdp;)V

    return-object v0
.end method
