.class Lcom/bytedance/sdk/component/widget/recycler/ox$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/recycler/ox;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

.field final synthetic iw:Lcom/bytedance/sdk/component/widget/recycler/ox;

.field final synthetic ox:Landroid/view/View;

.field final synthetic p:I

.field final synthetic s:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->iw:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iput p3, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->d:I

    iput-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->ox:Landroid/view/View;

    iput p5, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->p:I

    iput-object p6, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->s:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->d:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->ox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->p:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->ox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->s:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->iw:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/no;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->iw:Lcom/bytedance/sdk/component/widget/recycler/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/ox;->s:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->dq:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/ox$6;->iw:Lcom/bytedance/sdk/component/widget/recycler/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ox;->ox()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
