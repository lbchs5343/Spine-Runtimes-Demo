.class public abstract Lg/rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lg/byp;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/byp;

    iget v1, v0, Lg/byp;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/byp;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/byp;

    invoke-direct {v0, p0, p2}, Lg/byp;-><init>(Lg/rb;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/byp;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/byp;->label:I

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lg/byp;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/ega;

    :try_start_0
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    new-instance p2, Lg/ega;

    invoke-virtual {v0}, Lg/w;->getContext()Lg/boj;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lg/ega;-><init>(Lg/fjs;Lg/boj;)V

    :try_start_1
    iput-object p2, v0, Lg/byp;->L$0:Ljava/lang/Object;

    iput v4, v0, Lg/byp;->label:I

    move-object p1, p0

    check-cast p1, Lg/edl;

    iget-object p1, p1, Lg/edl;->b:Lg/fmr;

    invoke-virtual {p1, p2, v0}, Lg/fmr;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lg/w;->c()V

    return-object v3

    :goto_3
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Lg/w;->c()V

    throw p2
.end method
