.class public abstract Lcom/bykv/vk/openvk/preload/d/dq;
.super Lcom/bykv/vk/openvk/preload/d/ig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/d/ig<",
        "TIN;TOUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/d/ig;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/d/mp;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/d/mp;-><init>(Lcom/bykv/vk/openvk/preload/d/d;)V

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/d/dq;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/ig;->mn:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/d/ig$dq;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/d/ig$dq;->dq:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/bykv/vk/openvk/preload/d/kk;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/d/kk;->dq:Lcom/bykv/vk/openvk/preload/d/s;

    invoke-static {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/d/ox;->dq(Ljava/util/List;Lcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)Lcom/bykv/vk/openvk/preload/d/d;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/d/ig;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not found branch, branch name is\uff1a"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract dq(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
