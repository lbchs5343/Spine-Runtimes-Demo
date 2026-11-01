.class public final Lg/efw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/aye;

.field public final synthetic c:Lg/fjs;


# direct methods
.method public constructor <init>(Lg/bhw;Lg/aye;Lg/fjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/efw;->a:Lg/aye;

    iput-object p3, p0, Lg/efw;->c:Lg/fjs;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lg/dmj;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/dmj;

    iget v1, v0, Lg/dmj;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/dmj;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/dmj;

    invoke-direct {v0, p0, p2}, Lg/dmj;-><init>(Lg/efw;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/dmj;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/dmj;->label:I

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p2, p0, Lg/efw;->a:Lg/aye;

    iget-object v2, p2, Lg/aye;->element:Ljava/lang/Object;

    sget-object v5, Lg/ckd;->h:Lg/hy;

    if-eq v2, v5, :cond_3

    invoke-static {v2, p1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iput-object p1, p2, Lg/aye;->element:Ljava/lang/Object;

    iput v4, v0, Lg/dmj;->label:I

    iget-object p2, p0, Lg/efw;->c:Lg/fjs;

    invoke-interface {p2, p1, v0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    return-object v3
.end method
