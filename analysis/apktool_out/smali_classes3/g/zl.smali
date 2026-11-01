.class public final Lg/zl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/zl;->a:I

    iput-object p2, p0, Lg/zl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lg/zl;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast p1, Lg/fts;

    iget-object v0, p1, Lg/fts;->s:Lg/aio;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lg/fts;->ad:Lg/bzg;

    invoke-virtual {p1}, Lg/bzg;->w()F

    move-result p1

    invoke-virtual {v0, p1}, Lg/aio;->j(F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lg/hdh;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lg/hdh;->bu(F)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_3

    invoke-static {v0}, Lg/gkb;->s(Lg/gkb;)I

    invoke-static {v0}, Lg/gkb;->iw(Lg/gkb;)Lg/dac;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Lg/dac;->a:I

    if-lez v1, :cond_1

    invoke-static {v0}, Lg/gkb;->mn(Lg/gkb;)I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-static {v0}, Lg/gkb;->ox(Lg/gkb;)V

    invoke-virtual {v0}, Lg/gkb;->dq()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lg/gkb;->setProgress(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lg/gkb;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lg/gkb;->ia(Lg/gkb;)Lg/cra;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p1, Lg/dac;->f:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0}, Lg/gkb;->ia(Lg/gkb;)Lg/cra;

    move-result-object v0

    check-cast v0, Lg/emr;

    iget-object v0, v0, Lg/emr;->n:Ljava/lang/Object;

    check-cast v0, Lg/akg;

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Lg/akg;->a(Lg/akg;Ljava/util/HashMap;I)V

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    iget-object p1, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast p1, Lg/byd;

    iget-object v0, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->getFrame()I

    move-result v0

    iget-object v1, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v1, Lg/gkb;

    invoke-static {v1}, Lg/gkb;->i(Lg/gkb;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->getFrame()I

    move-result v0

    iget-object v1, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v1, Lg/gkb;

    invoke-static {v1}, Lg/gkb;->i(Lg/gkb;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_4

    iget-object v0, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-static {v0}, Lg/gkb;->i(Lg/gkb;)I

    iget-object v0, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast v0, Lg/gkb;

    invoke-virtual {v0, p0}, Lg/gkb;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p1, Lg/byd;->b:Ljava/lang/Object;

    check-cast p1, Lg/gkb;

    invoke-virtual {p1}, Lg/gkb;->mn()V

    :cond_4
    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast v0, Lg/eiu;

    iget-object v1, v0, Lg/eiu;->ac:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lg/eiu;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, v0, Lg/eiu;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lg/zl;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->az:Lg/ddm;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lg/ddm;->er(F)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
