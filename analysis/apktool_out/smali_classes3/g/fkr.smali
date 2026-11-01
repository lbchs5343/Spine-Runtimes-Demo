.class public final Lg/fkr;
.super Lg/dzo;
.source "SourceFile"


# instance fields
.field public t:Lg/eia;

.field public u:Lg/cgo;

.field public final v:Lg/elw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/dzw;Lg/elw;Lg/cgo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/dzo;-><init>(Landroid/content/Context;Lg/dzw;)V

    iput-object p3, p0, Lg/fkr;->v:Lg/elw;

    iput-object p4, p0, Lg/fkr;->u:Lg/cgo;

    iput-object p0, p4, Lg/cgo;->aa:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    move-object v1, p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lg/dzo;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Lg/fkr;->w()Z

    move-result v0

    const/4 v8, 0x0

    iget-object v9, p0, Lg/dzo;->l:Lg/dzw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fkr;->t:Lg/eia;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lg/fkr;->t:Lg/eia;

    iget-object v2, v9, Lg/dzw;->r:[I

    aget v2, v2, v8

    invoke-virtual {v0, v2}, Lg/eia;->setTint(I)V

    iget-object v0, p0, Lg/fkr;->t:Lg/eia;

    invoke-virtual {v0, p1}, Lg/eia;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lg/dzo;->r()F

    move-result v3

    iget-object v0, p0, Lg/dzo;->h:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lg/dzo;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x0

    :goto_3
    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    iget-object v7, v0, Lg/elw;->v:Lg/dzw;

    invoke-virtual {v7}, Lg/dzw;->j()V

    invoke-virtual/range {v0 .. v5}, Lg/elw;->m(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    iget v10, v9, Lg/dzw;->v:I

    const/4 v0, 0x1

    iget v6, p0, Lg/dzo;->g:I

    instance-of v1, v9, Lg/cvs;

    if-nez v1, :cond_7

    instance-of v1, v9, Lg/alp;

    if-eqz v1, :cond_6

    move-object v1, v9

    check-cast v1, Lg/alp;

    iget-boolean v1, v1, Lg/alp;->b:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v11, 0x1

    :goto_5
    if-eqz v11, :cond_8

    if-nez v10, :cond_8

    invoke-virtual {v9, v8}, Lg/dzw;->ab(Z)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    iget-object v2, p0, Lg/dzo;->d:Landroid/graphics/Paint;

    if-eqz v12, :cond_9

    iget v5, v9, Lg/dzw;->t:I

    const/4 v7, 0x0

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_7
    move v7, v10

    goto :goto_8

    :cond_9
    if-eqz v11, :cond_b

    iget-object v1, p0, Lg/fkr;->u:Lg/cgo;

    iget-object v1, v1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/agm;

    iget-object v3, p0, Lg/fkr;->u:Lg/cgo;

    iget-object v3, v3, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lg/agm;

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    instance-of v3, v0, Lg/dpx;

    if-eqz v3, :cond_a

    iget v4, v1, Lg/agm;->d:F

    iget v5, v9, Lg/dzw;->t:I

    const/4 v3, 0x0

    move-object v1, p1

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    iget v3, v13, Lg/agm;->f:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v9, Lg/dzw;->t:I

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_8

    :cond_a
    move-object v0, p1

    move v7, v10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v13, Lg/agm;->h:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget v3, v13, Lg/agm;->f:F

    iget v1, v1, Lg/agm;->d:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v1

    iget v5, v9, Lg/dzw;->t:I

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_b
    move-object v1, p1

    goto :goto_7

    :goto_8
    iget-object v0, p0, Lg/fkr;->u:Lg/cgo;

    iget-object v0, v0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_d

    iget-object v0, p0, Lg/fkr;->u:Lg/cgo;

    iget-object v0, v0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/agm;

    invoke-virtual {p0}, Lg/dzo;->s()F

    move-result v3

    iput v3, v0, Lg/agm;->e:F

    iget-object v3, p0, Lg/fkr;->v:Lg/elw;

    iget v4, p0, Lg/dzo;->g:I

    invoke-virtual {v3, p1, v2, v0, v4}, Lg/elw;->r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/agm;I)V

    if-lez v8, :cond_c

    if-nez v12, :cond_c

    if-eqz v11, :cond_c

    iget-object v3, p0, Lg/fkr;->u:Lg/cgo;

    iget-object v3, v3, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/agm;

    iget v3, v3, Lg/agm;->f:F

    iget v4, v0, Lg/agm;->d:F

    iget v5, v9, Lg/dzw;->t:I

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move-object v1, p1

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    :goto_9
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    invoke-virtual {v0}, Lg/elw;->l()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lg/fkr;->v:Lg/elw;

    invoke-virtual {v0}, Lg/elw;->n()I

    move-result v0

    return v0
.end method

.method public final p(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lg/dzo;->p(ZZZ)Z

    move-result v0

    invoke-virtual {p0}, Lg/fkr;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/fkr;->t:Lg/eia;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lg/eia;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lg/dzo;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p2}, Lg/cgo;->y()V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x16

    if-gt p1, p2, :cond_3

    invoke-virtual {p0}, Lg/fkr;->w()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lg/fkr;->u:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->x()V

    :cond_3
    return v0
.end method

.method public final w()Z
    .locals 3

    iget-object v0, p0, Lg/dzo;->e:Lg/fec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dzo;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
