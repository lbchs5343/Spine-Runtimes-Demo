.class public Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;
.super Lcom/bykv/vk/openvk/component/video/dq/d/dq/dq;


# instance fields
.field public final dq:Ljava/io/File;


# virtual methods
.method public d()V
    .locals 4

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->p()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->dq(I)V

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;->dq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d$1;

    const-string v1, "clear"

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public ox(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;->s(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;->s(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/dq/d;->dq:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
