.class Lcom/bytedance/sdk/openadsdk/core/ce$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ce;->p()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ce;

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ce;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ce$1;->d:Lcom/bytedance/sdk/openadsdk/core/ce;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ce$1;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ce$1;->d:Lcom/bytedance/sdk/openadsdk/core/ce;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ce$1;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ce;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;Z)Z

    return-void
.end method
