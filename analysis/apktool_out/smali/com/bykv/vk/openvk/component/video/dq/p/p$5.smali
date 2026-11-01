.class Lcom/bykv/vk/openvk/component/video/dq/p/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->d:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
