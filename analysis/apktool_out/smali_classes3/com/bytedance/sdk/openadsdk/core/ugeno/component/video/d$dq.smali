.class Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

.field dq:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)V

    return-void
.end method


# virtual methods
.method public d(JI)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->d(JI)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(JI)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/NativeVideoView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setComplete(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/NativeVideoView;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/NativeVideoView;->dq(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JI)V

    :cond_2
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JJ)V

    :cond_0
    return-void
.end method
