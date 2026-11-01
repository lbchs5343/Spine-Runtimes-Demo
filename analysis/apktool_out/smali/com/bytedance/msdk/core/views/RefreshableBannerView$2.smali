.class Lcom/bytedance/msdk/core/views/RefreshableBannerView$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/views/RefreshableBannerView;->dq(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/views/RefreshableBannerView;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/views/RefreshableBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/views/RefreshableBannerView$2;->dq:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/msdk/core/views/RefreshableBannerView$2;->dq:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/views/RefreshableBannerView$2;->dq:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--==-- after remove, view count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/views/RefreshableBannerView$2;->dq:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TMe"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
