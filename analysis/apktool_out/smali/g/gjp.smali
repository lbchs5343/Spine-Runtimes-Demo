.class public final Lg/gjp;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public final c:Lg/sh;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/animation/AnimatorSet;

.field public final f:Landroid/view/View;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lg/sh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gjp;->f:Landroid/view/View;

    iput-object p2, p0, Lg/gjp;->c:Lg/sh;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lg/gjp;->e:Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lg/gjp;->d:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/gjp;->c:Lg/sh;

    iget-object v2, v1, Lg/sh;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cau;

    if-eqz v3, :cond_1

    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    iget-wide v5, v3, Lg/cau;->d:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "translateX"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "translationX"

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "translateY"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "translationY"

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :goto_1
    iget-wide v5, v3, Lg/cau;->b:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v5, p0, Lg/gjp;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "backgroundColor"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v6, :cond_4

    iget v6, v3, Lg/cau;->e:F

    float-to-int v6, v6

    iget v11, v3, Lg/cau;->j:F

    float-to-int v11, v11

    filled-new-array {v6, v11}, [I

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_2

    :cond_4
    iget v6, v3, Lg/cau;->e:F

    iget v11, v3, Lg/cau;->j:F

    new-array v12, v10, [F

    aput v6, v12, v8

    aput v11, v12, v9

    invoke-virtual {v4, v12}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_2
    iget v6, v1, Lg/sh;->e:F

    float-to-int v6, v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_3

    :cond_5
    iget v6, v3, Lg/cau;->g:F

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :goto_3
    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_6
    iget-object v6, v1, Lg/sh;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v6, v3, Lg/cau;->i:Ljava/lang/String;

    :cond_7
    const-string v7, "reverse"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :goto_4
    iget-object v6, v3, Lg/cau;->a:[F

    if-eqz v6, :cond_9

    array-length v7, v6

    if-lez v7, :cond_9

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_9
    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rotationX"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lg/dyn;

    const/16 v7, 0xc

    invoke-direct {v6, v7, p0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-virtual {v3}, Lg/cau;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ripple"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v3, Lg/cau;->h:Ljava/lang/String;

    iput-object v5, p0, Lg/gjp;->g:Ljava/lang/String;

    :cond_b
    iget-object v3, v3, Lg/cau;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_5
    const/4 v8, -0x1

    goto :goto_6

    :sswitch_0
    const-string v5, "standard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v8, 0x4

    goto :goto_6

    :sswitch_1
    const-string v5, "accelerateDecelerate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v8, 0x3

    goto :goto_6

    :sswitch_2
    const-string v5, "linear"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_5

    :cond_e
    const/4 v8, 0x2

    goto :goto_6

    :sswitch_3
    const-string v5, "decelerate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_5

    :cond_f
    const/4 v8, 0x1

    goto :goto_6

    :sswitch_4
    const-string v5, "accelerate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    :goto_6
    packed-switch v8, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7

    :pswitch_1
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7

    :pswitch_2
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7

    :pswitch_3
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    iget-wide v2, v1, Lg/sh;->a:J

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lg/gjp;->e:Landroid/animation/AnimatorSet;

    cmp-long v7, v2, v4

    if-eqz v7, :cond_12

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_12
    iget-wide v2, v1, Lg/sh;->b:J

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, v1, Lg/sh;->c:Ljava/lang/String;

    const-string v2, "sequentially"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :goto_8
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_14
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_4
        -0x4b5653c4 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        0x1c5dd2f9 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
