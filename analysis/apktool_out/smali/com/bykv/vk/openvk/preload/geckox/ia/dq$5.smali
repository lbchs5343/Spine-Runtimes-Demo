.class final Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;
.super Lcom/bykv/vk/openvk/preload/d/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/geckox/ia/dq;->d(Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bykv/vk/openvk/preload/geckox/p;)Lcom/bykv/vk/openvk/preload/d/d/dq;
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

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/d/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V
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

    const-string v0, "onStart"

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/d/d/dq;->dq(Lcom/bykv/vk/openvk/preload/d/d;Lcom/bykv/vk/openvk/preload/d/p;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v1, :cond_0

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/s/d;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

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
    .locals 3
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

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v1, :cond_0

    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/s/d;

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v1, p1, p3}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;Ljava/lang/Throwable;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

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
    .locals 3
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

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->dq:Lcom/bykv/vk/openvk/preload/geckox/o/dq;

    if-eqz v1, :cond_0

    const-class v2, Lcom/bykv/vk/openvk/preload/geckox/s/d;

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/preload/d/d;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/preload/geckox/ig/s;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

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
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ia/dq$5;->d:Lcom/bykv/vk/openvk/preload/geckox/p;

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
