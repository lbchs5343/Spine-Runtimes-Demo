.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/p/gh;


# instance fields
.field private d:Lcom/bytedance/msdk/ox/p/mn;

.field private dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/mn;Lcom/bytedance/msdk/api/p/dq/ox/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->d:Lcom/bytedance/msdk/ox/p/mn;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/gromore/dq/dq/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->d:Lcom/bytedance/msdk/ox/p/mn;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/p/d;->ig()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/d;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;-><init>(Lcom/bytedance/msdk/api/d;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/gromore/dq/dq/p/r;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->d(Z)V

    :cond_0
    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Lcom/bytedance/sdk/gromore/dq/dq/d;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->gh()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;-><init>(Lcom/bytedance/msdk/api/ox;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/s;-><init>()V

    return-object v0
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->er()V

    :cond_0
    return-void
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ce()V

    :cond_0
    return-void
.end method

.method public ox()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/gromore/dq/dq/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->d:Lcom/bytedance/msdk/ox/p/mn;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/p/d;->mp()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/ox;

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lg/dub;->o(Lcom/bytedance/msdk/api/ox;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/gromore/dq/dq/d;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->dq:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->e()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;-><init>(Lcom/bytedance/msdk/api/ox;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/s;-><init>()V

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/gromore/dq/dq/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;->d:Lcom/bytedance/msdk/ox/p/mn;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/p/d;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/ox;

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lg/dub;->o(Lcom/bytedance/msdk/api/ox;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
