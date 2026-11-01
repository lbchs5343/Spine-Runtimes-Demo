.class public abstract Lg/aij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Landroid/adservices/topics/TopicsManager;


# direct methods
.method public constructor <init>(Landroid/adservices/topics/TopicsManager;)V
    .locals 1

    const-string v0, "mTopicsManager"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aij;->c:Landroid/adservices/topics/TopicsManager;

    return-void
.end method

.method public static d(Lg/aij;Lg/eph;Lg/bdp;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/aij;",
            "Lg/eph;",
            "Lg/bdp<",
            "-",
            "Lg/ema;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lg/si;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/si;

    iget v1, v0, Lg/si;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/si;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/si;

    invoke-direct {v0, p0, p2}, Lg/si;-><init>(Lg/aij;Lg/bdp;)V

    :goto_0
    iget-object p2, v0, Lg/si;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/si;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lg/si;->L$0:Ljava/lang/Object;

    check-cast p0, Lg/aij;

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lg/aij;->b(Lg/eph;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    iput-object p0, v0, Lg/si;->L$0:Ljava/lang/Object;

    iput v3, v0, Lg/si;->label:I

    new-instance p2, Lg/gsn;

    invoke-static {v0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lg/gsn;-><init>(ILg/bdp;)V

    invoke-virtual {p2}, Lg/gsn;->ac()V

    iget-object v0, p0, Lg/aij;->c:Landroid/adservices/topics/TopicsManager;

    new-instance v2, Lg/xh;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lg/xh;-><init>(I)V

    new-instance v3, Lg/azf;

    invoke-direct {v3, p2}, Lg/azf;-><init>(Lg/gsn;)V

    invoke-static {v0, p1, v2, v3}, Lg/fvr;->j(Landroid/adservices/topics/TopicsManager;Landroid/adservices/topics/GetTopicsRequest;Lg/xh;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p2}, Lg/gsn;->z()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p2}, Lg/fvr;->q(Ljava/lang/Object;)Landroid/adservices/topics/GetTopicsResponse;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "response"

    invoke-static {p1, p0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lg/fvr;->o(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lg/fvr;->s(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    move-result-object p2

    new-instance v0, Lg/bqc;

    invoke-static {p2}, Lg/fvr;->v(Landroid/adservices/topics/Topic;)J

    move-result-wide v1

    invoke-static {p2}, Lg/fvr;->k(Landroid/adservices/topics/Topic;)J

    move-result-wide v3

    invoke-static {p2}, Lg/fvr;->r(Landroid/adservices/topics/Topic;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lg/bqc;-><init>(JJI)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lg/ema;

    invoke-direct {p1, p0}, Lg/ema;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public b(Lg/eph;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/fvr;->h()Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lg/fvr;->m(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lg/fvr;->a(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    const-string v0, "Builder()\n            .s\u2026ame)\n            .build()"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lg/eph;Lg/bdp;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/eph;",
            "Lg/bdp<",
            "-",
            "Lg/ema;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lg/aij;->d(Lg/aij;Lg/eph;Lg/bdp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
