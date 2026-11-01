.class final Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/s/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/preload/geckox/s/ox;

.field final synthetic dq:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/s/ox;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;->d:Lcom/bykv/vk/openvk/preload/geckox/s/ox;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;->dq:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/s/ox$2;->dq:Ljava/io/File;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/p;->dq(Ljava/io/File;)Z

    return-void
.end method
