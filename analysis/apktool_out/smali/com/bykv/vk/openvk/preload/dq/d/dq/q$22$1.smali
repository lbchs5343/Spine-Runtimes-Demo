.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;

.field final synthetic dq:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->d:Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->dq:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/dq;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->d:Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->dq:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->dq:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/p/ox;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22$1;->d:Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q$22;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method
