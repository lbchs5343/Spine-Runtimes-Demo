.class public Lcom/bykv/vk/openvk/preload/geckox/no/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bykv/vk/openvk/preload/geckox/no/ox;

.field private static dq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/no/dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/no/dq;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d:Lcom/bykv/vk/openvk/preload/geckox/no/ox;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d:Lcom/bykv/vk/openvk/preload/geckox/no/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/no/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq:Z

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d:Lcom/bykv/vk/openvk/preload/geckox/no/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/no/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs dq(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/no/d;->d:Lcom/bykv/vk/openvk/preload/geckox/no/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/no/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
