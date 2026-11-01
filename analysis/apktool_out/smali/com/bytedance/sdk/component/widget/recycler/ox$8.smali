.class Lcom/bytedance/sdk/component/widget/recycler/ox$8;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/ox;->dq(Lcom/bytedance/sdk/component/widget/recycler/ox$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/ViewPropertyAnimator;

.field final synthetic dq:Lcom/bytedance/sdk/component/widget/recycler/ox$dq;

.field final synthetic ox:Landroid/view/View;

.field final synthetic p:Lcom/bytedance/sdk/component/widget/recycler/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/ox;Lcom/bytedance/sdk/component/widget/recycler/ox$dq;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->p:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->dq:Lcom/bytedance/sdk/component/widget/recycler/ox$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->d:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->ox:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->ox:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->ox:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->ox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->p:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->dq:Lcom/bytedance/sdk/component/widget/recycler/ox$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/no;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->p:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/ox;->mn:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->dq:Lcom/bytedance/sdk/component/widget/recycler/ox$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/widget/recycler/ox$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$8;->p:Lcom/bytedance/sdk/component/widget/recycler/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ox;->ox()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
