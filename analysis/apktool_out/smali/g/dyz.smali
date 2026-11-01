.class public final Lg/dyz;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bnk;


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/dyz;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/dyz;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/fjs;

    iget-object v1, p0, Lg/dyz;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Lg/bfx;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lg/gpr;->a:Lg/gpr;

    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-static {v6, v5}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    iput v2, p0, Lg/dyz;->label:I

    invoke-interface {p1, v5, p0}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lg/fjs;

    check-cast p2, [Ljava/lang/Object;

    new-instance v0, Lg/dyz;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p3}, Lg/avu;-><init>(ILg/bdp;)V

    iput-object p1, v0, Lg/dyz;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lg/dyz;->L$1:Ljava/lang/Object;

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {v0, p1}, Lg/dyz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
