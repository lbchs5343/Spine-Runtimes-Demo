.class Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;->gh()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;

.field final synthetic dq:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->dq:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->d:Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->dq:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;->dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/ox/d$10;->dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
