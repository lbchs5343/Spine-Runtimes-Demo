.class public abstract Lcom/bykv/vk/openvk/preload/dq/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/dq/no;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bykv/vk/openvk/preload/dq/no;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->d:Lcom/bykv/vk/openvk/preload/dq/no;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/iw;->dq:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final dq()Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/r$1;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/r$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/r;)V

    return-object v0
.end method

.method public abstract dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/dq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/ox;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
