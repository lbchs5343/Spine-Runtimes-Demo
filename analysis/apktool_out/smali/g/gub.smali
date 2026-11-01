.class public final Lg/gub;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewPropertyAnimator;

.field public final synthetic b:Lg/guh;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/recyclerview/widget/p;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg/guh;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gub;->c:I

    iput-object p1, p0, Lg/gub;->b:Lg/guh;

    iput-object p2, p0, Lg/gub;->d:Landroidx/recyclerview/widget/p;

    iput-object p3, p0, Lg/gub;->e:Landroid/view/View;

    iput-object p4, p0, Lg/gub;->a:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/guh;Landroidx/recyclerview/widget/p;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gub;->c:I

    iput-object p1, p0, Lg/gub;->b:Lg/guh;

    iput-object p2, p0, Lg/gub;->d:Landroidx/recyclerview/widget/p;

    iput-object p3, p0, Lg/gub;->a:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lg/gub;->e:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lg/gub;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gub;->e:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lg/gub;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gub;->a:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lg/gub;->b:Lg/guh;

    iget-object v0, p0, Lg/gub;->d:Landroidx/recyclerview/widget/p;

    invoke-virtual {p1, v0}, Lg/dgn;->l(Landroidx/recyclerview/widget/p;)V

    iget-object v1, p1, Lg/guh;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/guh;->ac()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gub;->a:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lg/gub;->e:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lg/gub;->b:Lg/guh;

    iget-object v0, p0, Lg/gub;->d:Landroidx/recyclerview/widget/p;

    invoke-virtual {p1, v0}, Lg/dgn;->l(Landroidx/recyclerview/widget/p;)V

    iget-object v1, p1, Lg/guh;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/guh;->ac()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lg/gub;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gub;->b:Lg/guh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gub;->b:Lg/guh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
