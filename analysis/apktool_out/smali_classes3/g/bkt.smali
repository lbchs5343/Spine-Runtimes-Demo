.class public final Lg/bkt;
.super Lg/awt;
.source "SourceFile"


# instance fields
.field public final synthetic at:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/bkt;->at:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aq(Ljava/lang/Object;F)V
    .locals 3

    iget v0, p0, Lg/bkt;->at:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, p2}, Lcom/google/android/material/button/MaterialButton;->ah(Lcom/google/android/material/button/MaterialButton;F)V

    return-void

    :pswitch_0
    check-cast p1, Lg/glg;

    const v0, 0x461c4000    # 10000.0f

    div-float v0, p2, v0

    iget-object v1, p1, Lg/glg;->ae:Lg/agm;

    iput v0, v1, Lg/agm;->f:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    float-to-int p2, p2

    iget-object v0, p1, Lg/dzo;->l:Lg/dzw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/dzw;->ab(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lg/dzo;->j:Landroid/content/Context;

    iget-object v1, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lg/gtk;->b:Landroid/view/animation/LinearInterpolator;

    const v2, 0x7f0403ab

    invoke-static {v0, v2, v1}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    iput-object v2, p1, Lg/glg;->ad:Landroid/animation/TimeInterpolator;

    const v2, 0x7f0403a3

    invoke-static {v0, v2, v1}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p1, Lg/glg;->ab:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lg/emn;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lg/emn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    const v0, 0x460ca000    # 9000.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget v0, p1, Lg/glg;->aa:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput p2, p1, Lg/glg;->aa:F

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p1, Lg/glg;->ad:Landroid/animation/TimeInterpolator;

    iput-object p2, p1, Lg/glg;->w:Landroid/animation/TimeInterpolator;

    iget-object p1, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    iget-object p2, p1, Lg/glg;->ab:Landroid/animation/TimeInterpolator;

    iput-object p2, p1, Lg/glg;->w:Landroid/animation/TimeInterpolator;

    iget-object p1, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lg/glg;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lg/glg;->ae:Lg/agm;

    iput p2, v0, Lg/agm;->c:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final as(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lg/bkt;->at:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Lcom/google/android/material/button/MaterialButton;->ag(Lcom/google/android/material/button/MaterialButton;)F

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lg/glg;

    iget-object p1, p1, Lg/glg;->ae:Lg/agm;

    iget p1, p1, Lg/agm;->f:F

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
