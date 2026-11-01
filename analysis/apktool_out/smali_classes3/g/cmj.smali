.class public final Lg/cmj;
.super Lg/cgo;
.source "SourceFile"


# static fields
.field public static final d:Lg/dfe;


# instance fields
.field public h:F

.field public final i:Lg/fca;

.field public final j:Lg/cvs;

.field public k:I

.field public l:Landroid/animation/ObjectAnimator;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/dfe;

    const-string v1, "animationFraction"

    const/16 v2, 0xa

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/cmj;->d:Lg/dfe;

    return-void
.end method

.method public constructor <init>(Lg/cvs;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lg/cgo;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lg/cmj;->k:I

    iput-object p1, p0, Lg/cmj;->j:Lg/cvs;

    new-instance p1, Lg/fca;

    invoke-direct {p1, v0}, Lg/fca;-><init>(I)V

    iput-object p1, p0, Lg/cmj;->i:Lg/fca;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 3

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-object v1, Lg/cmj;->d:Lg/dfe;

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/cmj;->j:Lg/cvs;

    iget v1, v1, Lg/dzw;->o:F

    const v2, 0x43a68000    # 333.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    new-instance v1, Lg/cod;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lg/cod;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final o()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cmj;->m:Z

    iput v0, p0, Lg/cmj;->k:I

    iget-object v0, p0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/agm;

    iget-object v2, p0, Lg/cmj;->j:Lg/cvs;

    iget-object v3, v2, Lg/dzw;->r:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v1, Lg/agm;->g:I

    iget v2, v2, Lg/dzw;->v:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lg/agm;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Lg/cmj;->n()V

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lg/cmj;->j:Lg/cvs;

    iget v1, v1, Lg/dzw;->o:F

    const v2, 0x43a68000    # 333.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lg/cmj;->o()V

    return-void
.end method

.method public final u()V
    .locals 0

    return-void
.end method

.method public final w(Lg/bbg;)V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, Lg/cmj;->n()V

    invoke-virtual {p0}, Lg/cmj;->o()V

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lg/cmj;->l:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 0

    return-void
.end method
