.class public final Lg/amp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lg/exi;

.field public final b:Lg/bsb;

.field public final c:Lg/bsb;

.field public final d:Landroid/graphics/Matrix;

.field public final e:Lg/bsb;

.field public final f:[F

.field public final g:Landroid/graphics/Matrix;

.field public final h:Lg/cav;

.field public final i:Lg/bsb;

.field public final j:Lg/bsb;

.field public final k:Landroid/graphics/Matrix;

.field public final l:Lg/dph;

.field public final m:Landroid/graphics/Matrix;

.field public final n:Lg/cej;


# direct methods
.method public constructor <init>(Lg/eld;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/amp;->g:Landroid/graphics/Matrix;

    iget-object v0, p1, Lg/eld;->d:Lg/fc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/fc;->dq()Lg/cej;

    move-result-object v0

    :goto_0
    check-cast v0, Lg/cav;

    iput-object v0, p0, Lg/amp;->h:Lg/cav;

    iget-object v0, p1, Lg/eld;->h:Lg/eqn;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lg/eqn;->dq()Lg/cej;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lg/amp;->n:Lg/cej;

    iget-object v0, p1, Lg/eld;->i:Lg/dlz;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lg/dlz;->dq()Lg/cej;

    move-result-object v0

    :goto_2
    check-cast v0, Lg/exi;

    iput-object v0, p0, Lg/amp;->a:Lg/exi;

    iget-object v0, p1, Lg/eld;->b:Lg/cnc;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lg/cnc;->dq()Lg/cej;

    move-result-object v0

    :goto_3
    check-cast v0, Lg/bsb;

    iput-object v0, p0, Lg/amp;->j:Lg/bsb;

    iget-object v0, p1, Lg/eld;->f:Lg/cnc;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lg/cnc;->dq()Lg/cej;

    move-result-object v0

    check-cast v0, Lg/bsb;

    :goto_4
    iput-object v0, p0, Lg/amp;->b:Lg/bsb;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/amp;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/amp;->m:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/amp;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lg/amp;->f:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lg/amp;->k:Landroid/graphics/Matrix;

    iput-object v1, p0, Lg/amp;->m:Landroid/graphics/Matrix;

    iput-object v1, p0, Lg/amp;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Lg/amp;->f:[F

    :goto_5
    iget-object v0, p1, Lg/eld;->j:Lg/cnc;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lg/cnc;->dq()Lg/cej;

    move-result-object v0

    check-cast v0, Lg/bsb;

    :goto_6
    iput-object v0, p0, Lg/amp;->e:Lg/bsb;

    iget-object v0, p1, Lg/eld;->c:Lg/dlz;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lg/dlz;->dq()Lg/cej;

    move-result-object v0

    check-cast v0, Lg/dph;

    iput-object v0, p0, Lg/amp;->l:Lg/dph;

    :cond_7
    iget-object v0, p1, Lg/eld;->a:Lg/cnc;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lg/cnc;->dq()Lg/cej;

    move-result-object v0

    check-cast v0, Lg/bsb;

    iput-object v0, p0, Lg/amp;->i:Lg/bsb;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lg/amp;->i:Lg/bsb;

    :goto_7
    iget-object p1, p1, Lg/eld;->g:Lg/cnc;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    check-cast p1, Lg/bsb;

    iput-object p1, p0, Lg/amp;->c:Lg/bsb;

    return-void

    :cond_9
    iput-object v1, p0, Lg/amp;->c:Lg/bsb;

    return-void
.end method


# virtual methods
.method public final o()Landroid/graphics/Matrix;
    .locals 14

    iget-object v0, p0, Lg/amp;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v1, 0x0

    iget-object v2, p0, Lg/amp;->n:Lg/cej;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_0

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1

    :cond_0
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v2, p0, Lg/amp;->j:Lg/bsb;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/bsb;->c()F

    move-result v2

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lg/amp;->b:Lg/bsb;

    if-eqz v3, :cond_5

    const/high16 v4, 0x42b40000    # 90.0f

    iget-object v5, p0, Lg/amp;->e:Lg/bsb;

    if-nez v5, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lg/bsb;->c()F

    move-result v6

    neg-float v6, v6

    add-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    :goto_0
    if-nez v5, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lg/bsb;->c()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_1
    invoke-virtual {v3}, Lg/bsb;->c()F

    move-result v3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-virtual {p0}, Lg/amp;->p()V

    iget-object v5, p0, Lg/amp;->f:[F

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v8, 0x1

    aput v4, v5, v8

    neg-float v9, v4

    const/4 v10, 0x3

    aput v9, v5, v10

    const/4 v11, 0x4

    aput v6, v5, v11

    const/16 v12, 0x8

    aput v2, v5, v12

    iget-object v13, p0, Lg/amp;->k:Landroid/graphics/Matrix;

    invoke-virtual {v13, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lg/amp;->p()V

    aput v2, v5, v7

    aput v3, v5, v10

    aput v2, v5, v11

    aput v2, v5, v12

    iget-object v3, p0, Lg/amp;->m:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lg/amp;->p()V

    aput v6, v5, v7

    aput v9, v5, v8

    aput v4, v5, v10

    aput v6, v5, v11

    aput v2, v5, v12

    iget-object v4, p0, Lg/amp;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v3, v13}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_5
    iget-object v3, p0, Lg/amp;->a:Lg/exi;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aof;

    iget v4, v3, Lg/aof;->a:F

    cmpl-float v5, v4, v2

    if-nez v5, :cond_6

    iget v5, v3, Lg/aof;->b:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_7

    :cond_6
    iget v2, v3, Lg/aof;->b:F

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_7
    iget-object v2, p0, Lg/amp;->h:Lg/cav;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_8

    iget v3, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_9

    :cond_8
    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_a

    :cond_9
    iget v1, v2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_a
    return-object v0
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lg/amp;->f:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(F)Landroid/graphics/Matrix;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lg/amp;->n:Lg/cej;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lg/amp;->a:Lg/exi;

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aof;

    :goto_1
    iget-object v3, p0, Lg/amp;->g:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, p1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, p1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget v1, v2, Lg/aof;->a:F

    float-to-double v4, v1

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    iget v2, v2, Lg/aof;->b:F

    float-to-double v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v1, p0, Lg/amp;->j:Lg/bsb;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lg/amp;->h:Lg/cav;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_2
    mul-float v1, v1, p1

    const/4 p1, 0x0

    if-nez v0, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    iget v2, v0, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v0, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v3, v1, v2, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    return-object v3
.end method

.method public final r(Lg/fyj;)V
    .locals 1

    iget-object v0, p0, Lg/amp;->l:Lg/dph;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_0
    iget-object v0, p0, Lg/amp;->i:Lg/bsb;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_1
    iget-object v0, p0, Lg/amp;->c:Lg/bsb;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_2
    iget-object v0, p0, Lg/amp;->h:Lg/cav;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_3
    iget-object v0, p0, Lg/amp;->n:Lg/cej;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_4
    iget-object v0, p0, Lg/amp;->a:Lg/exi;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_5
    iget-object v0, p0, Lg/amp;->j:Lg/bsb;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_6
    iget-object v0, p0, Lg/amp;->b:Lg/bsb;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_7
    iget-object v0, p0, Lg/amp;->e:Lg/bsb;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lg/cej;->l(Lg/fyj;)V

    :cond_8
    return-void
.end method

.method public final s(Lg/grq;)V
    .locals 1

    iget-object v0, p0, Lg/amp;->l:Lg/dph;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->i:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->c:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->h:Lg/cav;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->n:Lg/cej;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->a:Lg/exi;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->j:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->b:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object v0, p0, Lg/amp;->e:Lg/bsb;

    invoke-virtual {p1, v0}, Lg/grq;->bg(Lg/cej;)V

    return-void
.end method
