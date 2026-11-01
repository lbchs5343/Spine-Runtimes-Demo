.class Lcom/bykv/vk/openvk/component/video/dq/p/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx()V
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

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e;)Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
