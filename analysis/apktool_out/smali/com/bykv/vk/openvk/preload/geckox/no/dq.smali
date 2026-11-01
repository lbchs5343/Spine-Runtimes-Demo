.class Lcom/bykv/vk/openvk/preload/geckox/no/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/geckox/no/ox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs dq(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;

    move-result-object p1

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
