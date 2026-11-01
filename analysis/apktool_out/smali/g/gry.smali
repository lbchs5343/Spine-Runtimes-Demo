.class public final Lg/gry;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lg/guh;

.field public final synthetic c:I

.field public final synthetic d:Lg/gbk;

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public synthetic constructor <init>(Lg/guh;Lg/gbk;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Lg/gry;->c:I

    iput-object p1, p0, Lg/gry;->b:Lg/guh;

    iput-object p2, p0, Lg/gry;->d:Lg/gbk;

    iput-object p3, p0, Lg/gry;->e:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lg/gry;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lg/gry;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gry;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lg/gry;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lg/gry;->d:Lg/gbk;

    iget-object v0, p1, Lg/gbk;->e:Landroidx/recyclerview/widget/p;

    iget-object v1, p0, Lg/gry;->b:Lg/guh;

    invoke-virtual {v1, v0}, Lg/dgn;->l(Landroidx/recyclerview/widget/p;)V

    iget-object v0, v1, Lg/guh;->y:Ljava/util/ArrayList;

    iget-object p1, p1, Lg/gbk;->e:Landroidx/recyclerview/widget/p;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/guh;->ac()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gry;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lg/gry;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lg/gry;->d:Lg/gbk;

    iget-object v0, p1, Lg/gbk;->c:Landroidx/recyclerview/widget/p;

    iget-object v1, p0, Lg/gry;->b:Lg/guh;

    invoke-virtual {v1, v0}, Lg/dgn;->l(Landroidx/recyclerview/widget/p;)V

    iget-object v0, v1, Lg/guh;->y:Ljava/util/ArrayList;

    iget-object p1, p1, Lg/gbk;->c:Landroidx/recyclerview/widget/p;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/guh;->ac()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lg/gry;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gry;->d:Lg/gbk;

    iget-object p1, p1, Lg/gbk;->e:Landroidx/recyclerview/widget/p;

    iget-object p1, p0, Lg/gry;->b:Lg/guh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gry;->d:Lg/gbk;

    iget-object p1, p1, Lg/gbk;->c:Landroidx/recyclerview/widget/p;

    iget-object p1, p0, Lg/gry;->b:Lg/guh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
