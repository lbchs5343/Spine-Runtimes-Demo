.class public final Lcom/bykv/vk/openvk/preload/geckox/utils/ox;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/utils/s;->dq()Z

    move-result v0

    const-string v1, "throwIfDebug:"

    const-string v2, "gecko-debug-tag"

    if-nez v0, :cond_0

    invoke-static {v2, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {v2, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
