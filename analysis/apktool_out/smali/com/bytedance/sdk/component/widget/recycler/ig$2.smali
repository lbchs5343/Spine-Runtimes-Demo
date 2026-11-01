.class Lcom/bytedance/sdk/component/widget/recycler/ig$2;
.super Lcom/bytedance/sdk/component/widget/recycler/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/ig;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;)Lcom/bytedance/sdk/component/widget/recycler/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic iw:Lcom/bytedance/sdk/component/widget/recycler/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/ig;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$2;->iw:Lcom/bytedance/sdk/component/widget/recycler/ig;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/iw;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;)V
    .locals 2

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ig$2;->iw:Lcom/bytedance/sdk/component/widget/recycler/ig;

    iget-object v0, p2, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->getLayoutManager()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ig;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/iw;->dq(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/iw;->d:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$dq;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
