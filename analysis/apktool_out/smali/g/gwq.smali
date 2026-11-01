.class public final Lg/gwq;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $this_launchIn:Lg/dqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dqx;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lg/dqx;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/gwq;->$this_launchIn:Lg/dqx;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/gwq;->label:I

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

    iget-object p1, p0, Lg/gwq;->$this_launchIn:Lg/dqx;

    iput v3, p0, Lg/gwq;->label:I

    sget-object v1, Lg/dyv;->a:Lg/dyv;

    invoke-interface {p1, v1, p0}, Lg/dqx;->a(Lg/fjs;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/hcc;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/gwq;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/gwq;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/gwq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 1

    new-instance p1, Lg/gwq;

    iget-object v0, p0, Lg/gwq;->$this_launchIn:Lg/dqx;

    invoke-direct {p1, v0, p2}, Lg/gwq;-><init>(Lg/dqx;Lg/bdp;)V

    return-object p1
.end method
