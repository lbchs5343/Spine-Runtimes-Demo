.class public final Lg/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/csr;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/lang/String;

.field public final f:Lg/csr;

.field public final g:Lg/cgn;

.field public final h:Lg/byd;

.field public final i:Landroid/view/View;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/cf;->d:Landroid/os/Handler;

    new-instance v0, Lg/cgn;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cf;->g:Lg/cgn;

    new-instance v0, Lg/csr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/csr;-><init>(Lg/cf;I)V

    iput-object v0, p0, Lg/cf;->f:Lg/csr;

    new-instance v0, Lg/byd;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/cf;->h:Lg/byd;

    const v0, 0x7f090183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/cf;->i:Landroid/view/View;

    new-instance v1, Lg/csr;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/csr;-><init>(Lg/cf;I)V

    iput-object v1, p0, Lg/cf;->a:Lg/csr;

    const v1, 0x7f090181

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lg/cf;->b:Landroid/view/View;

    const v1, 0x7f090180

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lg/cf;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg/fnp;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/cf;->e:Ljava/lang/String;

    const v2, 0x7f09017f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lg/dyd;->ap(Landroid/view/View;)V

    new-instance v1, Lg/fgf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/fgf;-><init>(Lg/cf;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/fgf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/fgf;-><init>(Lg/cf;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final k(Z)V
    .locals 13

    iget-boolean v0, p0, Lg/cf;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/cf;->d:Landroid/os/Handler;

    iget-object v1, p0, Lg/cf;->f:Lg/csr;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lg/cf;->g:Lg/cgn;

    iget v5, v4, Lg/cgn;->a:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x4b0

    if-lez v5, :cond_1

    iget-wide v11, v4, Lg/cgn;->b:J

    sub-long v11, v2, v11

    cmp-long v5, v11, v9

    if-ltz v5, :cond_1

    iput v8, v4, Lg/cgn;->a:I

    iput-wide v6, v4, Lg/cgn;->b:J

    :cond_1
    iget v5, v4, Lg/cgn;->a:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_2

    iput v8, v4, Lg/cgn;->a:I

    iput-wide v6, v4, Lg/cgn;->b:J

    :cond_2
    iget v5, v4, Lg/cgn;->a:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lg/cgn;->a:I

    iput-wide v2, v4, Lg/cgn;->b:J

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/cf;->i:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lg/cf;->a:Lg/csr;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4

    invoke-static {}, Lg/cnf;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lg/cf;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const v0, 0x3eb33333    # 0.35f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    invoke-virtual {p0}, Lg/cf;->l()V

    return-void
.end method

.method public final l()V
    .locals 7

    iget-object v0, p0, Lg/cf;->g:Lg/cgn;

    iget v1, v0, Lg/cgn;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lg/cf;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/cf;->i:Landroid/view/View;

    if-lez v1, :cond_1

    const/4 v6, 0x7

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Lg/cgn;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v0, v5, v2

    const v0, 0x7f1201c3

    invoke-virtual {v1, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const v2, 0x7f1201c2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lg/cf;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(J)V
    .locals 4

    invoke-virtual {p0}, Lg/cf;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cf;->j:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lg/cf;->g:Lg/cgn;

    iput v0, v1, Lg/cgn;->a:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg/cgn;->b:J

    invoke-virtual {p0}, Lg/cf;->l()V

    iget-object v0, p0, Lg/cf;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {}, Lg/cnf;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lg/cf;->d:Landroid/os/Handler;

    iget-object v1, p0, Lg/cf;->h:Lg/byd;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final n()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/cf;->j:Z

    iget-object v1, p0, Lg/cf;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/cf;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lg/cf;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lg/cf;->g:Lg/cgn;

    iput v0, v1, Lg/cgn;->a:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg/cgn;->b:J

    invoke-virtual {p0}, Lg/cf;->l()V

    return-void
.end method
