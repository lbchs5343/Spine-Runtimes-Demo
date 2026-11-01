.class public final Lg/sd;
.super Lg/cle;
.source "SourceFile"


# static fields
.field public static final a:[I


# instance fields
.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f040466

    const v1, 0x7f040468

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/sd;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lg/cle;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lg/biq;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lg/sd;->b:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static d(Landroid/view/View;Ljava/lang/CharSequence;I)Lg/sd;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lg/sd;->a:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v5, v4, :cond_6

    if-eq v6, v4, :cond_6

    const v2, 0x7f0c00a2

    goto :goto_2

    :cond_6
    const v2, 0x7f0c003a

    :goto_2
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v2, Lg/sd;

    invoke-direct {v2, v0, p0, v1, v1}, Lg/sd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    iget-object p0, v2, Lg/cle;->aa:Lg/cnp;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, v2, Lg/cle;->n:I

    return-object v2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lg/cle;->aa:Lg/cnp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg/sd;->c:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lg/aww;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1, p2}, Lg/aww;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lg/sd;->c:Z

    return-void
.end method

.method public final f()V
    .locals 8

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/sd;->b:Landroid/view/accessibility/AccessibilityManager;

    iget v2, p0, Lg/cle;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    :goto_0
    const/4 v2, -0x2

    goto :goto_2

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    iget-boolean v5, p0, Lg/sd;->c:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    or-int/lit8 v5, v5, 0x3

    invoke-static {v1, v2, v5}, Lg/io;->v(Landroid/view/accessibility/AccessibilityManager;II)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-boolean v6, p0, Lg/sd;->c:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v5, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    iput v2, v1, Lg/ep;->b:I

    iget-object v2, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    invoke-virtual {v0, v1}, Lg/duw;->m(Lg/ep;)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    iget-object v6, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v6, Lg/ep;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lg/ep;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    iget-object v1, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    iput v2, v1, Lg/ep;->b:I

    goto :goto_3

    :cond_6
    new-instance v3, Lg/ep;

    invoke-direct {v3, v2, v1}, Lg/ep;-><init>(ILg/rl;)V

    iput-object v3, v0, Lg/duw;->f:Ljava/lang/Object;

    :goto_3
    iget-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    check-cast v1, Lg/ep;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1, v4}, Lg/duw;->n(Lg/ep;I)Z

    move-result v1

    if-eqz v1, :cond_7

    monitor-exit v5

    return-void

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/duw;->p()V

    monitor-exit v5

    return-void

    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Z
    .locals 3

    invoke-static {}, Lg/duw;->j()Lg/duw;

    move-result-object v0

    iget-object v1, p0, Lg/cle;->v:Lg/rl;

    iget-object v2, v0, Lg/duw;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lg/duw;->k(Lg/rl;)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
