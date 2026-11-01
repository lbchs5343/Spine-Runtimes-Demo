.class public Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;
.super Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/p;


# instance fields
.field private dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/s/iw;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/s/iw;->mn()V

    :cond_0
    return-void
.end method

.method public getAdLoadInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v3}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/gromore/dq/dq/p;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/ia;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/p;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getBestEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->p()Lcom/bytedance/sdk/gromore/dq/dq/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v3}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/gromore/dq/dq/d;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v2}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->ox()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    invoke-interface {v3}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->ox()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/gromore/dq/dq/d;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->iw()Lcom/bytedance/sdk/gromore/dq/dq/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/mn;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/d;)V

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/kk;->dq:Lcom/bytedance/sdk/gromore/dq/dq/s/iw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox;->dq()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
