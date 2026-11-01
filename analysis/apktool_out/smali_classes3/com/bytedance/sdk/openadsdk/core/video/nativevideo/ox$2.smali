.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
