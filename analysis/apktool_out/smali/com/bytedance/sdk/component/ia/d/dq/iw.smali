.class public Lcom/bytedance/sdk/component/ia/d/dq/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/d/dq/s;


# instance fields
.field private dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/d/dq/d/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/component/ia/dq/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/d/ox;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->mn()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/ox;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->s(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->dq()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->dq()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/dq/d/p;

    invoke-direct {v2, v0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/p;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->d(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/d/s;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/s;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/d/iw;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/iw;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->p(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/d/d;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->kk()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/d;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p2}, Lcom/bytedance/sdk/component/ia/d/d/dq;->iw(Lcom/bytedance/sdk/component/ia/dq/s;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/d/mn;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->iw()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/mn;-><init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Lcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)",
            "Lcom/bytedance/sdk/component/ia/d/dq/d;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;

    const-string v2, "get"

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d(Lcom/bytedance/sdk/component/ia/dq/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq(IZLjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;

    invoke-virtual {v0, p1, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
