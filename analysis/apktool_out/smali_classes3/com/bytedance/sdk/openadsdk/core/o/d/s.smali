.class public Lcom/bytedance/sdk/openadsdk/core/o/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/d/dq;


# instance fields
.field private final dq:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/core/o/d/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onDownloadPaused"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onIdle"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onDownloadActive"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onDownloadFinished"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onInstalled"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    const-string v2, "onDownloadFailed"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
