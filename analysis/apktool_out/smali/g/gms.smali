.class public final Lg/gms;
.super Lg/cqb;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field final synthetic $this_allViews:Landroid/view/View;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/gms;->$this_allViews:Landroid/view/View;

    invoke-direct {p0, p2}, Lg/cqb;-><init>(Lg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/gms;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lg/gms;->L$0:Ljava/lang/Object;

    check-cast v1, Lg/wu;

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/gms;->$this_allViews:Landroid/view/View;

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    iput-object v2, p0, Lg/gms;->L$0:Ljava/lang/Object;

    iput v4, p0, Lg/gms;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/ky;

    new-instance v5, Lg/bve;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p1}, Lg/bve;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v5}, Lg/ky;-><init>(Lg/bve;)V

    iget-object p1, v2, Lg/ky;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v3

    goto :goto_0

    :cond_2
    iput-object v2, v1, Lg/wu;->a:Ljava/util/Iterator;

    iput v4, v1, Lg/wu;->c:I

    iput-object p0, v1, Lg/wu;->b:Lg/bdp;

    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    return-object v3

    :cond_5
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/gms;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/wu;

    iget-object v1, p0, Lg/gms;->$this_allViews:Landroid/view/View;

    iput-object p1, p0, Lg/gms;->L$0:Ljava/lang/Object;

    iput v2, p0, Lg/gms;->label:I

    iput-object v1, p1, Lg/wu;->d:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, p1, Lg/wu;->c:I

    iput-object p0, p1, Lg/wu;->b:Lg/bdp;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/wu;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/gms;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/gms;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/gms;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance v0, Lg/gms;

    iget-object v1, p0, Lg/gms;->$this_allViews:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Lg/gms;-><init>(Landroid/view/View;Lg/bdp;)V

    iput-object p1, v0, Lg/gms;->L$0:Ljava/lang/Object;

    return-object v0
.end method
