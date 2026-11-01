.class public final Lg/epo;
.super Lg/flj;


# instance fields
.field public a:Landroid/graphics/Path;

.field public final b:Lg/flj;


# direct methods
.method public constructor <init>(Lg/cgf;Lg/flj;)V
    .locals 9

    iget-object v2, p2, Lg/flj;->p:Ljava/lang/Object;

    iget-object v3, p2, Lg/flj;->r:Ljava/lang/Object;

    iget-object v4, p2, Lg/flj;->h:Landroid/view/animation/Interpolator;

    iget-object v5, p2, Lg/flj;->j:Landroid/view/animation/Interpolator;

    iget-object v6, p2, Lg/flj;->l:Landroid/view/animation/Interpolator;

    iget v7, p2, Lg/flj;->s:F

    iget-object v8, p2, Lg/flj;->d:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object p2, v0, Lg/epo;->b:Lg/flj;

    invoke-virtual {p0}, Lg/epo;->c()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 12

    iget-object v0, p0, Lg/flj;->r:Ljava/lang/Object;

    iget-object v1, p0, Lg/flj;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/PointF;

    move-object v3, v0

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lg/flj;->r:Ljava/lang/Object;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    check-cast v1, Landroid/graphics/PointF;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v0, p0, Lg/epo;->b:Lg/flj;

    iget-object v3, v0, Lg/flj;->f:Landroid/graphics/PointF;

    iget-object v0, v0, Lg/flj;->m:Landroid/graphics/PointF;

    sget-object v4, Lg/ebx;->c:Lg/cqw;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v4

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    :cond_1
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float v7, v1, v3

    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float v8, v10, v1

    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v9, v11, v0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :cond_2
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    iput-object v5, p0, Lg/epo;->a:Landroid/graphics/Path;

    :cond_3
    return-void
.end method
