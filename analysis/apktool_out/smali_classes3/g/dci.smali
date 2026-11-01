.class public final Lg/dci;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/bgo;


# direct methods
.method public synthetic constructor <init>(Lg/bgo;I)V
    .locals 0

    iput p2, p0, Lg/dci;->a:I

    iput-object p1, p0, Lg/dci;->b:Lg/bgo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lg/dci;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lg/dci;->b:Lg/bgo;

    invoke-virtual {p1}, Lg/bgo;->y()V

    iget-object v0, p1, Lg/bgo;->q:Lg/gu;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast p1, Lg/fkr;

    invoke-virtual {v0, p1}, Lg/gu;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lg/dci;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lg/dci;->b:Lg/bgo;

    iget v0, p1, Lg/bgo;->s:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Lg/bgo;->o:Lg/alp;

    iget-object v1, v1, Lg/dzw;->r:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p1, Lg/bgo;->s:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
