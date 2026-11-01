.class Lcom/bytedance/sdk/openadsdk/core/p$4$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p$4;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p$4;Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4$1;->d:Lcom/bytedance/sdk/openadsdk/core/p$4;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$4$1;->dq:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4$1;->d:Lcom/bytedance/sdk/openadsdk/core/p$4;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$4;->dq:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4$1;->dq:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->ox()[J

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4$1;->d:Lcom/bytedance/sdk/openadsdk/core/p$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p$4;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z

    move-result v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/p$4$1$1;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/p$4$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p$4$1;)V

    const/high16 v3, 0x3200000

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/component/ig/d/d;->dq(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZLcom/bykv/vk/component/ttvideo/log/VideoEventEngineUploader;)V

    return-void
.end method
