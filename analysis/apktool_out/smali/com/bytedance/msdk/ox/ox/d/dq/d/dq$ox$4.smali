.class Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->iw(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p3, p3, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {p3}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TTBannerView onRenderSuccess \u6e32\u67d3\u6210\u529f\uff01\uff01mBannerViewRef = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p3, p3, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TTMediationSDK_banner"

    invoke-static {p3, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object p2, p2, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->d:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/api/s;->dq(Landroid/view/View;)V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;Z)Z

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->s(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p2

    instance-of p2, p2, Lcom/bytedance/msdk/dq/d/dq;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    invoke-static {p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;)Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->dq(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->d(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox$4;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq$ox;->p:Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/dq;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/s;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TTBannerView onRenderFail -> code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",msg="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_banner"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
