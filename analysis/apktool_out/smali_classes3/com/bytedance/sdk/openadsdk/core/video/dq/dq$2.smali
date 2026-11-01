.class Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->er()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resumeVideo: execResumePlay"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "BaseController"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    :cond_0
    return-void
.end method
