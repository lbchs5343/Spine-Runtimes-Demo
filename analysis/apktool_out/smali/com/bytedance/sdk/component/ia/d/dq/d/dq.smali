.class public abstract Lcom/bytedance/sdk/component/ia/d/dq/d/dq;
.super Lcom/bytedance/sdk/component/ia/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/component/ia/dq/d;",
        ">",
        "Lcom/bytedance/sdk/component/ia/d/dq/dq;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public dq:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field public ox:Ljava/lang/String;

.field public p:Lcom/bytedance/sdk/component/ia/dq/s;

.field private s:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/p/d/dq;Ljava/util/Queue;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ia/d/p/d/dq;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/ia/dq/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->s:Ljava/util/Queue;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->p:Lcom/bytedance/sdk/component/ia/dq/s;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->ox:Ljava/lang/String;

    return-void
.end method

.method private d(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1fd

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public d(ILcom/bytedance/sdk/component/ia/dq/d;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/ia/dq/d;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->d()I

    move-result p3

    if-ne p2, p3, :cond_0

    :cond_1
    return-object p1
.end method

.method public d(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq()I

    move-result p3

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    if-lt p2, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/bytedance/sdk/component/ia/d/dq/d;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/dq/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ia/d/dq/d;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d(ILjava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Z)V

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/d/dq/d;->dq(Z)V

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/d/dq;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
