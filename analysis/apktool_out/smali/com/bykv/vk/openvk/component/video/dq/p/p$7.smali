.class Lcom/bykv/vk/openvk/component/video/dq/p/p$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->mn()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;I)I

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
