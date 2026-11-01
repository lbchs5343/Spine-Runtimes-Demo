.class public Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/s/iw;


# instance fields
.field private dq:Lcom/bytedance/msdk/core/admanager/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/no;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

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

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mn/s;->ds()Ljava/util/List;

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

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->jy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Lcom/bytedance/sdk/gromore/dq/dq/d;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->o()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;-><init>(Lcom/bytedance/msdk/api/ox;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/s;-><init>()V

    return-object v0
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->d()V

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

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mn/ox;->nh()Ljava/util/List;

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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/iw;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->vf()Lcom/bytedance/msdk/api/ox;

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

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mn/ox;->ob()Ljava/util/List;

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
