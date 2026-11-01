.class public final Lcom/bykv/vk/openvk/preload/geckox/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/s$dq;
    }
.end annotation


# static fields
.field static d:Landroid/content/Context;

.field static dq:Ljava/io/File;

.field static ox:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/s;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bykv/vk/openvk/preload/ox/dq/d;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/ox/dq/d;

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/s;->d:Landroid/content/Context;

    const-string v2, "4ab312f7094810afa84659d3dc6cf0fe"

    sget-object v3, Lcom/bykv/vk/openvk/preload/geckox/s;->dq:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/preload/ox/dq/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
