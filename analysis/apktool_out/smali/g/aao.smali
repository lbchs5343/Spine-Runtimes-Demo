.class public final Lg/aao;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $workSpec:Lg/fkj;

.field label:I


# direct methods
.method public constructor <init>(Lg/fkj;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/aao;->$workSpec:Lg/fkj;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/aao;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    sget-object p1, Lg/goy;->a:Ljava/lang/String;

    iget-object p1, p0, Lg/aao;->$workSpec:Lg/fkj;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/bfx;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/aao;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/aao;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/aao;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 1

    new-instance p1, Lg/aao;

    iget-object v0, p0, Lg/aao;->$workSpec:Lg/fkj;

    invoke-direct {p1, v0, p2}, Lg/aao;-><init>(Lg/fkj;Lg/bdp;)V

    return-object p1
.end method
