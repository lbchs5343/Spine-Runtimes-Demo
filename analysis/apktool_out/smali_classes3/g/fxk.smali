.class public final Lg/fxk;
.super Lg/cgo;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final h:[I

.field public static final i:Lg/dfe;


# instance fields
.field public j:Z

.field public k:Landroid/animation/ObjectAnimator;

.field public final l:[Landroid/view/animation/Interpolator;

.field public final m:Lg/cvs;

.field public n:F

.field public o:Lg/gu;

.field public p:Landroid/animation/ObjectAnimator;

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x352

    const/16 v1, 0x2ee

    const/16 v2, 0x215

    const/16 v3, 0x237

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/fxk;->d:[I

    const/16 v0, 0x14d

    const/4 v1, 0x0

    const/16 v2, 0x4f3

    const/16 v3, 0x3e8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/fxk;->h:[I

    new-instance v0, Lg/dfe;

    const-string v1, "animationFraction"

    const/16 v2, 0xb

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/fxk;->i:Lg/dfe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/cvs;)V
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lg/cgo;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lg/fxk;->q:I

    const/4 v2, 0x0

    iput-object v2, p0, Lg/fxk;->o:Lg/gu;

    iput-object p2, p0, Lg/fxk;->m:Lg/cvs;

    const p2, 0x7f01003b

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    const v2, 0x7f01003c

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    const v3, 0x7f01003d

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    const v4, 0x7f01003e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/animation/Interpolator;

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v2, v4, p2

    aput-object v3, v4, v0

    const/4 p2, 0x3

    aput-object p1, v4, p2

    iput-object v4, p0, Lg/fxk;->l:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 8

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lg/fxk;->m:Lg/cvs;

    const/high16 v4, 0x44e10000    # 1800.0f

    sget-object v5, Lg/fxk;->i:Lg/dfe;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    iget v6, v3, Lg/dzw;->o:F

    mul-float v6, v6, v4

    float-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    new-instance v6, Lg/adn;

    invoke-direct {v6, p0, v1}, Lg/adn;-><init>(Lg/fxk;I)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v6, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    iget v3, v3, Lg/dzw;->o:F

    mul-float v3, v3, v4

    float-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    new-instance v2, Lg/adn;

    invoke-direct {v2, p0, v0}, Lg/adn;-><init>(Lg/fxk;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lg/fxk;->q:I

    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    iget-object v3, p0, Lg/fxk;->m:Lg/cvs;

    iget-object v3, v3, Lg/dzw;->r:[I

    aget v3, v3, v0

    iput v3, v2, Lg/agm;->g:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 6

    invoke-virtual {p0}, Lg/fxk;->r()V

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/fxk;->m:Lg/cvs;

    iget v2, v1, Lg/dzw;->o:F

    const/high16 v3, 0x44e10000    # 1800.0f

    mul-float v2, v2, v3

    float-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    iget v1, v1, Lg/dzw;->o:F

    mul-float v1, v1, v3

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lg/fxk;->s()V

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fxk;->o:Lg/gu;

    return-void
.end method

.method public final w(Lg/bbg;)V
    .locals 0

    iput-object p1, p0, Lg/fxk;->o:Lg/gu;

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, Lg/fxk;->r()V

    invoke-virtual {p0}, Lg/fxk;->s()V

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lg/fxk;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/fxk;->y()V

    iget-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v0, Lg/fkr;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lg/fxk;->n:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lg/fxk;->n:F

    sub-float/2addr v3, v1

    const/high16 v1, 0x44e10000    # 1800.0f

    mul-float v3, v3, v1

    float-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/fxk;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
