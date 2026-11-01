.class final Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;
.super Lcom/bykv/vk/openvk/preload/d/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/geckox/q/ox;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/preload/geckox/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/d/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->d(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-wide v0, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(J)Lcom/bykv/vk/openvk/preload/geckox/q/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")V"
        }
    .end annotation

    const-string v0, "onStart"

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "onException"

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-wide p2, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    invoke-static {p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(J)Lcom/bykv/vk/openvk/preload/geckox/q/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")V"
        }
    .end annotation

    const-string v0, "onEnd"

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of p1, p2, Lcom/bykv/vk/openvk/preload/geckox/s/s;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/bykv/vk/openvk/preload/d/p;->ox:Ljava/lang/Object;

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/bykv/vk/openvk/preload/d/p;->ox:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    const-string v1, "4ab312f7094810afa84659d3dc6cf0fe"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TT;>;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "onChainException"

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/ox$1;->dq:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-wide p2, p2, Lcom/bykv/vk/openvk/preload/d/p;->iw:J

    invoke-static {p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq(J)Lcom/bykv/vk/openvk/preload/geckox/q/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
