.class public final Lg/dhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lg/cle;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lg/cle;->aa:Lg/cnp;

    iget-object v4, v0, Lg/cle;->u:Landroid/view/accessibility/AccessibilityManager;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lg/cnp;->getAnimationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, v0, Lg/cle;->q:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lg/eoq;

    invoke-direct {v4, v0, v1}, Lg/eoq;-><init>(Lg/cle;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v4, v0, Lg/cle;->ab:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lg/don;

    invoke-direct {v4, v0, p1, v1}, Lg/don;-><init>(Lg/cle;II)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return v2

    :cond_2
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v5, v0, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    :cond_3
    filled-new-array {v1, v6}, [I

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, v0, Lg/cle;->s:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, v0, Lg/cle;->af:I

    int-to-long v5, v1

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lg/don;

    invoke-direct {v1, v0, p1, v4}, Lg/don;-><init>(Lg/cle;II)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lg/eoq;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lg/eoq;-><init>(Lg/cle;I)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return v2

    :cond_4
    invoke-virtual {v0}, Lg/cle;->an()V

    return v2

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lg/cle;

    iget-object v0, p1, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Lg/eu;

    const/4 v5, 0x4

    if-eqz v4, :cond_8

    check-cast v3, Lg/eu;

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    iget-object v6, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->w:Lg/emr;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p1, Lg/cle;->v:Lg/rl;

    iput-object v7, v6, Lg/emr;->n:Ljava/lang/Object;

    new-instance v6, Lg/eie;

    invoke-direct {v6, v5, p1}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object v6, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Lg/eie;

    iget-object v6, v3, Lg/eu;->h:Lg/dip;

    if-eq v6, v4, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lg/dip;->ca()V

    :cond_6
    iput-object v4, v3, Lg/eu;->h:Lg/dip;

    iput-boolean v2, v3, Lg/eu;->l:Z

    :cond_7
    const/16 v4, 0x50

    iput v4, v3, Lg/eu;->o:I

    :cond_8
    iget-object v3, p1, Lg/cle;->ag:Landroid/view/ViewGroup;

    iput-boolean v2, v0, Lg/cnp;->f:Z

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v1, v0, Lg/cnp;->f:Z

    invoke-virtual {p1}, Lg/cle;->al()V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lg/cle;->aj()V

    return v2

    :cond_a
    iput-boolean v2, p1, Lg/cle;->x:Z

    return v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
