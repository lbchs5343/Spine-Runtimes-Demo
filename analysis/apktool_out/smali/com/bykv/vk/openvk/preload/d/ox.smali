.class public final Lcom/bykv/vk/openvk/preload/d/ox;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/util/List;Lcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)Lcom/bykv/vk/openvk/preload/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/d/ia;",
            ">;",
            "Lcom/bykv/vk/openvk/preload/d/s;",
            "Lcom/bykv/vk/openvk/preload/d/p;",
            ")",
            "Lcom/bykv/vk/openvk/preload/d/d<",
            "TIN;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/bykv/vk/openvk/preload/d/s$dq;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/preload/d/s$dq;-><init>()V

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/d/kk;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bykv/vk/openvk/preload/d/kk;-><init>(Ljava/util/List;ILcom/bykv/vk/openvk/preload/d/s;Lcom/bykv/vk/openvk/preload/d/p;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interceptors == null !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
