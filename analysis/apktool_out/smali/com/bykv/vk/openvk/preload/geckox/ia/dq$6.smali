.class public final Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;
.super Lcom/bykv/vk/openvk/preload/d/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/ia/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/preload/geckox/p;

.field final synthetic dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/d/dq;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

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

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/ox;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
    .locals 4
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

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/s/ox;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/preload/d/d;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "onEnd"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final ox(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;Ljava/lang/Throwable;)V
    .locals 1
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
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$6;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p;->f:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
