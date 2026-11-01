.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->f()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$9;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$9;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s$9;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
