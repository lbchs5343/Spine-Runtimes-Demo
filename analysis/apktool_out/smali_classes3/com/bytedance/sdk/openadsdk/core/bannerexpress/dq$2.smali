.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;FF)V
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->dq(FF)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;FF)V

    :cond_2
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
