.class Lcom/bykv/vk/openvk/component/video/dq/p/p$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->p()V
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

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$15;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$15;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$15;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
