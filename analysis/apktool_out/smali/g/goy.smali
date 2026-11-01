.class public abstract Lg/goy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    invoke-static {v0, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg/goy;->a:Ljava/lang/String;

    return-void
.end method

.method public static final b(Lg/vn;Lg/fkj;Lg/w;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lg/gjj;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/gjj;

    iget v1, v0, Lg/gjj;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/gjj;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/gjj;

    invoke-direct {v0, p2}, Lg/w;-><init>(Lg/bdp;)V

    :goto_0
    iget-object p2, v0, Lg/gjj;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/gjj;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lg/vn;->c(Lg/fkj;)Lg/bhw;

    move-result-object p0

    new-instance p2, Lg/aao;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lg/aao;-><init>(Lg/fkj;Lg/bdp;)V

    new-instance p1, Lg/fdf;

    invoke-direct {p1, p0, p2}, Lg/fdf;-><init>(Lg/bhw;Lg/bto;)V

    new-instance p0, Lg/vd;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lg/vd;-><init>(ILjava/lang/Object;)V

    iput v3, v0, Lg/gjj;->label:I

    invoke-static {p0, v0}, Lg/gs;->aj(Lg/vd;Lg/w;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lg/das;

    iget p0, p2, Lg/das;->a:I

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
