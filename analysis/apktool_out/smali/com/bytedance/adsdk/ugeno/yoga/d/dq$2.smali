.class Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->dq(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

.field final synthetic dq:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->dq:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->ox(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->p(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->dq:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLayout;->dq(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/yoga/o;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->s(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->p(F)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->iw(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/o;->iw(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/d/dq$2;->d:Lcom/bytedance/adsdk/ugeno/yoga/d/dq;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/d/dq;->mn(Lcom/bytedance/adsdk/ugeno/yoga/d/dq;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
