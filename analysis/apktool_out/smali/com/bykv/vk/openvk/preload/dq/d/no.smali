.class public final Lcom/bykv/vk/openvk/preload/dq/d/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/no$dq;
    }
.end annotation


# direct methods
.method public static dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Lcom/bykv/vk/openvk/preload/dq/no;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/dq/jy;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bykv/vk/openvk/preload/dq/p/p; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->ds:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/preload/dq/no;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/bykv/vk/openvk/preload/dq/p/p; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/ig;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/ig;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/bykv/vk/openvk/preload/dq/mp;->dq:Lcom/bykv/vk/openvk/preload/dq/mp;

    return-object p0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static dq(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    return-object p0

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->ds:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1, p0}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    return-void
.end method
