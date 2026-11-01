.class final Lcom/bykv/vk/openvk/preload/geckox/s$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# static fields
.field private static dq:Lcom/bykv/vk/openvk/preload/geckox/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/s;-><init>(B)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/s$dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/s;

    return-void
.end method

.method public static synthetic dq()Lcom/bykv/vk/openvk/preload/geckox/s;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/s$dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/s;

    return-object v0
.end method
