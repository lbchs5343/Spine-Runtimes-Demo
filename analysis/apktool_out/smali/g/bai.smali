.class public final Lg/bai;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $downstream:Lg/fjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fjs;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lg/fjs;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/bai;->$downstream:Lg/fjs;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/bai;->label:I

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

    iget-object p1, p0, Lg/bai;->L$0:Ljava/lang/Object;

    iget-object v1, p0, Lg/bai;->$downstream:Lg/fjs;

    iput v2, p0, Lg/bai;->label:I

    invoke-interface {v1, p1, p0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/bai;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/bai;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/bai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance v0, Lg/bai;

    iget-object v1, p0, Lg/bai;->$downstream:Lg/fjs;

    invoke-direct {v0, v1, p2}, Lg/bai;-><init>(Lg/fjs;Lg/bdp;)V

    iput-object p1, v0, Lg/bai;->L$0:Ljava/lang/Object;

    return-object v0
.end method
