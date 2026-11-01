.class public abstract Lg/cle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroid/os/Handler;

.field public static final i:Lg/fca;

.field public static final j:Lg/fca;

.field public static final k:[I

.field public static final l:Landroid/view/animation/LinearInterpolator;


# instance fields
.field public final aa:Lg/cnp;

.field public final ab:I

.field public final ac:Lg/biq;

.field public ad:I

.field public ae:Ljava/util/ArrayList;

.field public final af:I

.field public final ag:Landroid/view/ViewGroup;

.field public ah:I

.field public final m:Landroid/content/Context;

.field public n:I

.field public o:I

.field public p:I

.field public final q:Landroid/animation/TimeInterpolator;

.field public r:Z

.field public final s:Landroid/animation/TimeInterpolator;

.field public final t:I

.field public final u:Landroid/view/accessibility/AccessibilityManager;

.field public final v:Lg/rl;

.field public final w:Landroid/animation/TimeInterpolator;

.field public x:Z

.field public y:I

.field public final z:Lg/fsd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lg/gtk;->c:Lg/fca;

    sput-object v0, Lg/cle;->j:Lg/fca;

    sget-object v0, Lg/gtk;->b:Landroid/view/animation/LinearInterpolator;

    sput-object v0, Lg/cle;->l:Landroid/view/animation/LinearInterpolator;

    sget-object v0, Lg/gtk;->a:Lg/fca;

    sput-object v0, Lg/cle;->i:Lg/fca;

    const v0, 0x7f040467

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lg/cle;->k:[I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lg/dhv;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lg/cle;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lg/biq;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fsd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/fsd;-><init>(Lg/cle;I)V

    iput-object v0, p0, Lg/cle;->z:Lg/fsd;

    new-instance v0, Lg/rl;

    invoke-direct {v0, p0}, Lg/rl;-><init>(Lg/cle;)V

    iput-object v0, p0, Lg/cle;->v:Lg/rl;

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    iput-object p2, p0, Lg/cle;->ag:Landroid/view/ViewGroup;

    iput-object p4, p0, Lg/cle;->ac:Lg/biq;

    iput-object p1, p0, Lg/cle;->m:Landroid/content/Context;

    sget-object p4, Lg/eyt;->y:[I

    const-string v0, "Theme.AppCompat"

    invoke-static {p1, p4, v0}, Lg/eyt;->az(Landroid/content/Context;[ILjava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget-object v0, Lg/cle;->k:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v2, :cond_0

    const v0, 0x7f0c00a1

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0039

    :goto_0
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lg/cnp;

    iput-object p2, p0, Lg/cle;->aa:Lg/cnp;

    invoke-static {p2, p0}, Lg/cnp;->m(Lg/cnp;Lg/cle;)V

    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz p4, :cond_2

    move-object p4, p3

    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p2}, Lg/cnp;->getActionTextColorAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    const v2, 0x7f040134

    invoke-static {v2, p4}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v2

    invoke-static {v2, v0, v1}, Lg/eyt;->ac(IFI)I

    move-result v0

    iget-object v1, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p2}, Lg/cnp;->getMaxInlineActionWidth()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance p4, Lg/evf;

    const/4 v0, 0x4

    invoke-direct {p4, v0, p0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p2, p4}, Lg/cd;->b(Landroid/view/View;Lg/ghx;)V

    new-instance p4, Lg/akz;

    invoke-direct {p4, p3, p0}, Lg/akz;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, p4}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lg/cle;->u:Landroid/view/accessibility/AccessibilityManager;

    const/16 p2, 0xfa

    const p3, 0x7f040395

    invoke-static {p1, p3, p2}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lg/cle;->af:I

    const/16 p2, 0x96

    invoke-static {p1, p3, p2}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lg/cle;->t:I

    const p2, 0x7f040398

    const/16 p3, 0x4b

    invoke-static {p1, p2, p3}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lg/cle;->ab:I

    sget-object p2, Lg/cle;->l:Landroid/view/animation/LinearInterpolator;

    const p3, 0x7f0403a5

    invoke-static {p1, p3, p2}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, Lg/cle;->q:Landroid/animation/TimeInterpolator;

    sget-object p2, Lg/cle;->i:Lg/fca;

    invoke-static {p1, p3, p2}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, Lg/cle;->w:Landroid/animation/TimeInterpolator;

    sget-object p2, Lg/cle;->j:Lg/fca;

    invoke-static {p1, p3, p2}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lg/cle;->s:Landroid/animation/TimeInterpolator;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ai()V
    .locals 3

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    invoke-virtual {v0, v1}, Lg/duw;->m(Lg/ep;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/cle;->ae:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lg/cle;->ae:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    check-cast v1, Lg/sd;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final aj()V
    .locals 3

    iget-object v0, p0, Lg/cle;->aa:Lg/cnp;

    iget-object v1, p0, Lg/cle;->u:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    new-instance v1, Lg/fsd;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/fsd;-><init>(Lg/cle;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lg/cle;->ai()V

    return-void
.end method

.method public final ak(I)V
    .locals 4

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    invoke-virtual {v0, v1, p1}, Lg/duw;->n(Lg/ep;I)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v3, Lg/ep;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    invoke-virtual {v0, v1, p1}, Lg/duw;->n(Lg/ep;I)Z

    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final al()V
    .locals 7

    iget-object v0, p0, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lg/cnp;->d:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lg/cle;->p:I

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, v0, Lg/cnp;->d:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lg/cle;->o:I

    add-int/2addr v2, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lg/cle;->y:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v6, v4, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v6, v2, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v6, v5, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v6, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_5

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_5
    if-nez v6, :cond_6

    iget v1, p0, Lg/cle;->ah:I

    iget v2, p0, Lg/cle;->ad:I

    if-eq v1, v2, :cond_7

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_7

    iget v1, p0, Lg/cle;->ad:I

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lg/cle;->r:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lg/eu;

    if-eqz v2, :cond_7

    check-cast v1, Lg/eu;

    iget-object v1, v1, Lg/eu;->h:Lg/dip;

    instance-of v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lg/cle;->z:Lg/fsd;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final am()Z
    .locals 5

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v0, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Lg/ep;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    monitor-exit v2

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final an()V
    .locals 3

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    iget-object v1, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/duw;->p()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/cle;->ae:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lg/cle;->ae:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p0

    check-cast v2, Lg/sd;

    iget-object v2, v1, Lg/bo;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lg/bo;->b:Lg/sd;

    invoke-virtual {v1}, Lg/sd;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
