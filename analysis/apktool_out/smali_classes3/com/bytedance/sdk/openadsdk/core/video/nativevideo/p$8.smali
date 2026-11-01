.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p$8;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ji:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/p/dq;->dq()V

    :cond_0
    return-void
.end method
