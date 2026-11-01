.class public Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;
.super Lcom/bykv/vk/openvk/preload/geckox/ox/d/ox;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/preload/geckox/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/ox/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/ox/d/ox;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;->flush()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->dq(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->dq([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ox/d/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ox/dq;

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/ox/dq;->dq([BII)I

    return-void
.end method
