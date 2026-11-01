.class Lcom/bykv/vk/openvk/component/video/dq/p/p$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;->dq:Z

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Z)V

    :cond_0
    return-void
.end method
