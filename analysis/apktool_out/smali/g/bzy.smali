.class public final Lg/bzy;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $request:Lg/eph;

.field label:I

.field final synthetic this$0:Lg/eb;


# direct methods
.method public constructor <init>(Lg/eb;Lg/eph;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/bzy;->this$0:Lg/eb;

    iput-object p2, p0, Lg/bzy;->$request:Lg/eph;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/bzy;->label:I

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

    iget-object p1, p0, Lg/bzy;->this$0:Lg/eb;

    iget-object p1, p1, Lg/eb;->a:Lg/aij;

    iget-object v1, p0, Lg/bzy;->$request:Lg/eph;

    iput v2, p0, Lg/bzy;->label:I

    invoke-virtual {p1, v1, p0}, Lg/aij;->e(Lg/eph;Lg/bdp;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lg/bzy;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/bzy;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/bzy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance p1, Lg/bzy;

    iget-object v0, p0, Lg/bzy;->this$0:Lg/eb;

    iget-object v1, p0, Lg/bzy;->$request:Lg/eph;

    invoke-direct {p1, v0, v1, p2}, Lg/bzy;-><init>(Lg/eb;Lg/eph;Lg/bdp;)V

    return-object p1
.end method
