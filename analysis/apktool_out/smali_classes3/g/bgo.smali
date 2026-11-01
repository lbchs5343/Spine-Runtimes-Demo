.class public final Lg/bgo;
.super Lg/cgo;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final h:Lg/dfe;

.field public static final i:Lg/dfe;

.field public static final j:[I

.field public static final k:[I


# instance fields
.field public l:F

.field public m:Landroid/animation/ObjectAnimator;

.field public final n:Lg/fca;

.field public final o:Lg/alp;

.field public p:F

.field public q:Lg/gu;

.field public r:Landroid/animation/ObjectAnimator;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/bgo;->d:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/bgo;->j:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lg/bgo;->k:[I

    new-instance v0, Lg/dfe;

    const-string v1, "animationFraction"

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/bgo;->i:Lg/dfe;

    new-instance v0, Lg/dfe;

    const-string v1, "completeEndFraction"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/bgo;->h:Lg/dfe;

    return-void
.end method

.method public constructor <init>(Lg/alp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg/cgo;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lg/bgo;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bgo;->q:Lg/gu;

    iput-object p1, p0, Lg/bgo;->o:Lg/alp;

    new-instance p1, Lg/fca;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lg/fca;-><init>(I)V

    iput-object p1, p0, Lg/bgo;->n:Lg/fca;

    return-void
.end method


# virtual methods
.method public final t()V
    .locals 4

    invoke-virtual {p0}, Lg/bgo;->v()V

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/bgo;->o:Lg/alp;

    iget v2, v1, Lg/dzw;->o:F

    const v3, 0x45a8c000    # 5400.0f

    mul-float v2, v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    const v2, 0x43a68000    # 333.0f

    iget v3, v1, Lg/dzw;->o:F

    mul-float v3, v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    iput v0, p0, Lg/bgo;->s:I

    iget-object v2, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    iget-object v1, v1, Lg/dzw;->r:[I

    aget v0, v1, v0

    iput v0, v2, Lg/agm;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lg/bgo;->p:F

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bgo;->q:Lg/gu;

    return-void
.end method

.method public final v()V
    .locals 5

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    iget-object v2, p0, Lg/bgo;->o:Lg/alp;

    if-nez v0, :cond_0

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sget-object v3, Lg/bgo;->i:Lg/dfe;

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    const v3, 0x45a8c000    # 5400.0f

    iget v4, v2, Lg/dzw;->o:F

    mul-float v4, v4, v3

    float-to-long v3, v4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    new-instance v3, Lg/dci;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lg/dci;-><init>(Lg/bgo;I)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sget-object v1, Lg/bgo;->h:Lg/dfe;

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    const v1, 0x43a68000    # 333.0f

    iget v2, v2, Lg/dzw;->o:F

    mul-float v2, v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/bgo;->n:Lg/fca;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    new-instance v1, Lg/dci;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/dci;-><init>(Lg/bgo;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final w(Lg/bbg;)V
    .locals 0

    iput-object p1, p0, Lg/bgo;->q:Lg/gu;

    return-void
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Lg/bgo;->v()V

    const/4 v0, 0x0

    iput v0, p0, Lg/bgo;->s:I

    iget-object v1, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/agm;

    iget-object v2, p0, Lg/bgo;->o:Lg/alp;

    iget-object v2, v2, Lg/dzw;->r:[I

    aget v0, v2, v0

    iput v0, v1, Lg/agm;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lg/bgo;->p:F

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lg/bgo;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast v0, Lg/fkr;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/bgo;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lg/bgo;->y()V

    :cond_2
    :goto_0
    return-void
.end method
