.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$5;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ji:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;

    invoke-interface {v1, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/p/dq;->d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V

    :cond_0
    return-void
.end method
