.class public final Lg/dqm;
.super Lg/yi;
.source "SourceFile"


# instance fields
.field public final g:Lg/avu;

.field public final h:Lg/avu;


# direct methods
.method public constructor <init>(Lg/bto;Lg/boj;ILg/bqt;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lg/yi;-><init>(Lg/boj;ILg/bqt;)V

    check-cast p1, Lg/avu;

    iput-object p1, p0, Lg/dqm;->g:Lg/avu;

    iput-object p1, p0, Lg/dqm;->h:Lg/avu;

    return-void
.end method


# virtual methods
.method public final e(Lg/ayw;Lg/bdp;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lg/ajq;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/ajq;

    iget v1, v0, Lg/ajq;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/ajq;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/ajq;

    check-cast p2, Lg/w;

    invoke-direct {v0, p0, p2}, Lg/ajq;-><init>(Lg/dqm;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/ajq;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/ajq;->label:I

    sget-object v3, Lg/dgi;->a:Lg/dgi;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lg/ajq;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/ayw;

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    iput-object p1, v0, Lg/ajq;->L$0:Ljava/lang/Object;

    iput v4, v0, Lg/ajq;->label:I

    iget-object p2, p0, Lg/dqm;->g:Lg/avu;

    invoke-interface {p2, p1, v0}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p1, Lg/dgs;

    iget-object p1, p1, Lg/dgs;->l:Lg/djo;

    invoke-virtual {p1}, Lg/djo;->ah()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lg/boj;ILg/bqt;)Lg/yi;
    .locals 2

    new-instance v0, Lg/dqm;

    iget-object v1, p0, Lg/dqm;->h:Lg/avu;

    invoke-direct {v0, v1, p1, p2, p3}, Lg/dqm;-><init>(Lg/bto;Lg/boj;ILg/bqt;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dqm;->g:Lg/avu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lg/yi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
