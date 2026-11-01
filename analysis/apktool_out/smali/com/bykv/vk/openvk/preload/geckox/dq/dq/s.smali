.class final Lcom/bykv/vk/openvk/preload/geckox/dq/dq/s;
.super Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->iw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->s:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->p:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iget v3, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;->dq:I

    if-le v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->p:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iget v3, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;->dq:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/dq/ox;->d(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->p:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;->ox:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/ox;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;Ljava/io/File;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/dq/dq/d;->dq(Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;Ljava/io/File;Ljava/util/List;)V

    return-void
.end method
