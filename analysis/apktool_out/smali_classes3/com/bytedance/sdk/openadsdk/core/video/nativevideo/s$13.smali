.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$13;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$13;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$13;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$13;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ji:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;

    invoke-interface {v1, v0, p1}, Lcom/bykv/vk/openvk/component/video/api/p/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
