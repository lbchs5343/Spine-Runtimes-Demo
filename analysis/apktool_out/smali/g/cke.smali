.class public final Lg/cke;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroidx/recyclerview/widget/p;

.field public final synthetic d:Lg/guh;

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg/guh;Landroidx/recyclerview/widget/p;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lg/cke;->d:Lg/guh;

    iput-object p2, p0, Lg/cke;->c:Landroidx/recyclerview/widget/p;

    iput p3, p0, Lg/cke;->e:I

    iput-object p4, p0, Lg/cke;->f:Landroid/view/View;

    iput p5, p0, Lg/cke;->a:I

    iput-object p6, p0, Lg/cke;->b:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lg/cke;->e:I

    const/4 v0, 0x0

    iget-object v1, p0, Lg/cke;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lg/cke;->a:I

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lg/cke;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lg/cke;->d:Lg/guh;

    iget-object v0, p0, Lg/cke;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {p1, v0}, Lg/dgn;->l(Landroidx/recyclerview/widget/p;)V

    iget-object v1, p1, Lg/guh;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/guh;->ac()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lg/cke;->d:Lg/guh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
