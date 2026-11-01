.class public final Lg/gnd;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/gjf;
.implements Lg/dvz;


# instance fields
.field public final a:Lg/ais;

.field public final b:Lg/fts;

.field public final c:Lg/cej;

.field public final d:Landroid/graphics/Path;

.field public final e:Lg/cej;

.field public f:Lg/cej;

.field public final g:Landroid/graphics/RectF;

.field public h:Z

.field public final i:Z

.field public final j:Lg/bsb;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/egv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/gnd;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/gnd;->g:Landroid/graphics/RectF;

    new-instance v0, Lg/ais;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ais;-><init>(I)V

    iput-object v0, p0, Lg/gnd;->a:Lg/ais;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gnd;->f:Lg/cej;

    iget-boolean v0, p3, Lg/egv;->f:Z

    iput-boolean v0, p0, Lg/gnd;->i:Z

    iput-object p1, p0, Lg/gnd;->b:Lg/fts;

    iget-object p1, p3, Lg/egv;->a:Lg/eqn;

    invoke-interface {p1}, Lg/eqn;->dq()Lg/cej;

    move-result-object p1

    iput-object p1, p0, Lg/gnd;->c:Lg/cej;

    iget-object v0, p3, Lg/egv;->b:Ljava/lang/Object;

    check-cast v0, Lg/eqn;

    invoke-interface {v0}, Lg/eqn;->dq()Lg/cej;

    move-result-object v0

    iput-object v0, p0, Lg/gnd;->e:Lg/cej;

    iget-object p3, p3, Lg/egv;->d:Lg/cnc;

    invoke-virtual {p3}, Lg/cnc;->dq()Lg/cej;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lg/bsb;

    iput-object v1, p0, Lg/gnd;->j:Lg/bsb;

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p2, v0}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p2, p3}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {v0, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p0}, Lg/cej;->l(Lg/fyj;)V

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/gnd;->h:Z

    iget-object v0, p0, Lg/gnd;->b:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    const/4 p2, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dvz;

    instance-of v1, v0, Lg/ejw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lg/ejw;

    invoke-virtual {v1}, Lg/ejw;->getType()Lg/eyu;

    move-result-object v2

    sget-object v3, Lg/eyu;->dq:Lg/eyu;

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lg/gnd;->a:Lg/ais;

    iget-object v0, v0, Lg/ais;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Lg/ejw;->g(Lg/fyj;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lg/enh;

    if-eqz v1, :cond_1

    check-cast v0, Lg/enh;

    iget-object v0, v0, Lg/enh;->b:Lg/cej;

    iput-object v0, p0, Lg/gnd;->f:Lg/cej;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/gnd;->h:Z

    iget-object v2, v0, Lg/gnd;->d:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lg/gnd;->i:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, v0, Lg/gnd;->h:Z

    return-object v2

    :cond_1
    iget-object v1, v0, Lg/gnd;->e:Lg/cej;

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v5

    const/4 v6, 0x0

    iget-object v7, v0, Lg/gnd;->j:Lg/bsb;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lg/bsb;->c()F

    move-result v7

    :goto_0
    cmpl-float v8, v7, v6

    if-nez v8, :cond_3

    iget-object v8, v0, Lg/gnd;->f:Lg/cej;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_3
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v9, v7, v8

    if-lez v9, :cond_4

    move v7, v8

    :cond_4
    iget-object v8, v0, Lg/gnd;->c:Lg/cej;

    invoke-virtual {v8}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    iget-object v11, v0, Lg/gnd;->g:Landroid/graphics/RectF;

    cmpl-float v12, v7, v6

    if-lez v12, :cond_5

    iget v13, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v4

    mul-float v14, v7, v5

    sub-float v15, v13, v14

    const/high16 v16, 0x40000000    # 2.0f

    iget v5, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    sub-float v14, v5, v14

    invoke-virtual {v11, v15, v14, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v11, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_1

    :cond_5
    const/high16 v16, 0x40000000    # 2.0f

    :goto_1
    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    add-float/2addr v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_6

    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    mul-float v13, v7, v16

    sub-float v14, v6, v13

    add-float/2addr v13, v5

    invoke-virtual {v11, v5, v14, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_7

    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    mul-float v13, v7, v16

    add-float v14, v5, v13

    add-float/2addr v13, v6

    invoke-virtual {v11, v5, v6, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v11, v5, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget v5, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    sub-float/2addr v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v12, :cond_8

    iget v5, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    mul-float v7, v7, v16

    sub-float v4, v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    add-float/2addr v7, v6

    invoke-virtual {v11, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v2, v11, v1, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lg/gnd;->a:Lg/ais;

    invoke-virtual {v1, v2}, Lg/ais;->f(Landroid/graphics/Path;)V

    iput-boolean v3, v0, Lg/gnd;->h:Z

    return-object v2
.end method
