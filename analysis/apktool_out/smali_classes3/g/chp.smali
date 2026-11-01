.class public final Lg/chp;
.super Lg/bhb;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/AutoCompleteTextView;

.field public ai:Landroid/animation/ValueAnimator;

.field public final aj:Landroid/animation/TimeInterpolator;

.field public ak:Landroid/animation/ValueAnimator;

.field public final b:Lg/bsw;

.field public c:J

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:I

.field public h:Landroid/view/accessibility/AccessibilityManager;

.field public i:Z

.field public final m:Lg/ld;

.field public final r:Lg/ecn;


# direct methods
.method public constructor <init>(Lg/zq;)V
    .locals 3

    invoke-direct {p0, p1}, Lg/bhb;-><init>(Lg/zq;)V

    new-instance v0, Lg/ld;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg/ld;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/chp;->m:Lg/ld;

    new-instance v0, Lg/ecn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/ecn;-><init>(Lg/bhb;I)V

    iput-object v0, p0, Lg/chp;->r:Lg/ecn;

    new-instance v0, Lg/bsw;

    invoke-direct {v0, p0}, Lg/bsw;-><init>(Lg/chp;)V

    iput-object v0, p0, Lg/chp;->b:Lg/bsw;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lg/chp;->c:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x43

    const v2, 0x7f04039e

    invoke-static {v0, v2, v1}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lg/chp;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v2, v1}, Lg/egh;->bf(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lg/chp;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0403a7

    sget-object v1, Lg/gtk;->b:Landroid/view/animation/LinearInterpolator;

    invoke-static {p1, v0, v1}, Lg/egh;->r(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lg/chp;->aj:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final ab(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lg/chp;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lg/dyd;->aw(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lg/chp;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    if-eq p1, v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lg/chp;->al()V

    iput-boolean v2, p0, Lg/chp;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/chp;->c:J

    :cond_4
    :goto_1
    return-void
.end method

.method public final ac(Lg/fnz;)V
    .locals 4

    iget-object v0, p1, Lg/fnz;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Lg/dyd;->aw(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/fnz;->j(Ljava/lang/CharSequence;)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lg/cch;->e(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lg/fnz;->g(I)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-lt v1, v2, :cond_2

    invoke-static {v0, p1}, Lg/cch;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final ad()Z
    .locals 1

    iget-boolean v0, p0, Lg/chp;->d:Z

    return v0
.end method

.method public final ae(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ag()Z
    .locals 1

    iget-boolean v0, p0, Lg/chp;->e:Z

    return v0
.end method

.method public final al()V
    .locals 6

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lg/chp;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    :cond_1
    iput-boolean v4, p0, Lg/chp;->i:Z

    :cond_2
    iget-boolean v0, p0, Lg/chp;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lg/chp;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lg/chp;->am(Z)V

    iget-boolean v0, p0, Lg/chp;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    :cond_3
    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    :cond_4
    iput-boolean v4, p0, Lg/chp;->i:Z

    return-void
.end method

.method public final am(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/chp;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lg/chp;->d:Z

    iget-object p1, p0, Lg/chp;->ak:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lg/chp;->ai:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final j()I
    .locals 1

    const v0, 0x7f08015a

    return v0
.end method

.method public final k()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lg/chp;->r:Lg/ecn;

    return-object v0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lg/chp;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lg/dyd;->aw(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bhb;->v:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lg/fvi;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lg/chp;->m:Lg/ld;

    return-object v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/widget/EditText;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lg/gup;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lg/gup;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lg/dsi;

    invoke-direct {v1, p0}, Lg/dsi;-><init>(Lg/chp;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    iget-object v0, p0, Lg/chp;->a:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bhb;->w:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lg/dyd;->aw(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/chp;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/bhb;->v:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()I
    .locals 1

    const v0, 0x7f12022c

    return v0
.end method

.method public final u()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lg/chp;->aj:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lg/chp;->g:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lg/emn;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lg/emn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lg/chp;->ak:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lg/chp;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lg/emn;

    invoke-direct {v2, v4, p0}, Lg/emn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lg/chp;->ai:Landroid/animation/ValueAnimator;

    new-instance v2, Lg/cod;

    invoke-direct {v2, v0, p0}, Lg/cod;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lg/bhb;->y:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lg/chp;->h:Landroid/view/accessibility/AccessibilityManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final z()Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1

    iget-object v0, p0, Lg/chp;->b:Lg/bsw;

    return-object v0
.end method
