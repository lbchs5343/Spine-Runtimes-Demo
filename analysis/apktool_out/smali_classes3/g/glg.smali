.class public final Lg/glg;
.super Lg/dzo;
.source "SourceFile"


# static fields
.field public static final t:Lg/bkt;


# instance fields
.field public aa:F

.field public ab:Landroid/animation/TimeInterpolator;

.field public final ac:Lg/elw;

.field public ad:Landroid/animation/TimeInterpolator;

.field public final ae:Lg/agm;

.field public final u:Lg/eov;

.field public final v:Landroid/animation/ValueAnimator;

.field public w:Landroid/animation/TimeInterpolator;

.field public final x:Lg/ceq;

.field public y:Landroid/animation/ValueAnimator;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bkt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bkt;-><init>(I)V

    sput-object v0, Lg/glg;->t:Lg/bkt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/dzw;Lg/elw;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lg/dzo;-><init>(Landroid/content/Context;Lg/dzw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/glg;->z:Z

    iput-object p3, p0, Lg/glg;->ac:Lg/elw;

    new-instance p3, Lg/agm;

    invoke-direct {p3}, Lg/agm;-><init>()V

    iput-object p3, p0, Lg/glg;->ae:Lg/agm;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lg/agm;->a:Z

    new-instance p3, Lg/ceq;

    invoke-direct {p3}, Lg/ceq;-><init>()V

    iput-object p3, p0, Lg/glg;->x:Lg/ceq;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Lg/ceq;->k(F)V

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p3, v2}, Lg/ceq;->l(F)V

    new-instance v2, Lg/eov;

    sget-object v3, Lg/glg;->t:Lg/bkt;

    invoke-direct {v2, p0, v3}, Lg/eov;-><init>(Ljava/lang/Object;Lg/awt;)V

    iput-object v2, p0, Lg/glg;->u:Lg/eov;

    iput-object p3, v2, Lg/eov;->h:Lg/ceq;

    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lg/glg;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p3, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lg/gml;

    invoke-direct {v2, p0, p1, p2}, Lg/gml;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v0}, Lg/dzw;->ab(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Lg/dzw;->u:I

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget p1, p0, Lg/dzo;->k:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    iput v1, p0, Lg/dzo;->k:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lg/dzo;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lg/dzo;->r()F

    move-result v3

    iget-object v0, p0, Lg/dzo;->h:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lg/dzo;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x0

    :goto_3
    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    iget-object v7, v0, Lg/elw;->v:Lg/dzw;

    invoke-virtual {v7}, Lg/dzw;->j()V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/elw;->m(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    invoke-virtual {p0}, Lg/dzo;->s()F

    move-result v0

    iget-object v9, p0, Lg/glg;->ae:Lg/agm;

    iput v0, v9, Lg/agm;->e:F

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget-object v2, p0, Lg/dzo;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v10, p0, Lg/dzo;->l:Lg/dzw;

    iget-object v0, v10, Lg/dzw;->r:[I

    aget v0, v0, v8

    iput v0, v9, Lg/agm;->g:I

    iget v0, v10, Lg/dzw;->v:I

    if-lez v0, :cond_6

    iget-object v1, p0, Lg/glg;->ac:Lg/elw;

    instance-of v1, v1, Lg/dpx;

    if-eqz v1, :cond_5

    :goto_4
    move v7, v0

    goto :goto_5

    :cond_5
    int-to-float v0, v0

    iget v1, v9, Lg/agm;->f:F

    const/4 v3, 0x0

    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v1, v3, v4}, Lg/dzm;->ac(FFF)F

    move-result v1

    mul-float v1, v1, v0

    div-float/2addr v1, v4

    float-to-int v0, v1

    goto :goto_4

    :goto_5
    iget v3, v9, Lg/agm;->f:F

    iget v5, v10, Lg/dzw;->t:I

    iget v6, p0, Lg/dzo;->g:I

    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_6

    :cond_6
    iget v5, v10, Lg/dzw;->t:I

    iget v6, p0, Lg/dzo;->g:I

    const/4 v7, 0x0

    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lg/elw;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_6
    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    iget v3, p0, Lg/dzo;->g:I

    invoke-virtual {v0, p1, v2, v9, v3}, Lg/elw;->r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/agm;I)V

    iget-object v0, v10, Lg/dzw;->r:[I

    aget v0, v0, v8

    iget v3, p0, Lg/dzo;->g:I

    iget-object v4, p0, Lg/glg;->ac:Lg/elw;

    invoke-virtual {v4, p1, v2, v0, v3}, Lg/elw;->p(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_7
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    invoke-virtual {v0}, Lg/elw;->l()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lg/glg;->ac:Lg/elw;

    invoke-virtual {v0}, Lg/elw;->n()I

    move-result v0

    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lg/glg;->u:Lg/eov;

    invoke-virtual {v0}, Lg/eov;->u()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lg/glg;->ae:Lg/agm;

    iput v0, v1, Lg/agm;->f:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 6

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x460ca000    # 9000.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lg/glg;->z:Z

    iget-object v2, p0, Lg/glg;->ae:Lg/agm;

    const/4 v3, 0x1

    const v4, 0x461c4000    # 10000.0f

    iget-object v5, p0, Lg/glg;->u:Lg/eov;

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lg/eov;->u()V

    div-float/2addr p1, v4

    iput p1, v2, Lg/agm;->f:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput v0, v2, Lg/agm;->c:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v3

    :cond_1
    iget v0, v2, Lg/agm;->f:F

    mul-float v0, v0, v4

    iput v0, v5, Lg/eov;->p:F

    iput-boolean v3, v5, Lg/eov;->r:Z

    invoke-virtual {v5, p1}, Lg/eov;->v(F)V

    return v3
.end method

.method public final p(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lg/dzo;->p(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lg/dzo;->e:Lg/fec;

    iget-object p3, p0, Lg/dzo;->j:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "animator_duration_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lg/glg;->z:Z

    return p1

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lg/glg;->z:Z

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p3, p2

    iget-object p2, p0, Lg/glg;->x:Lg/ceq;

    invoke-virtual {p2, p3}, Lg/ceq;->l(F)V

    return p1
.end method
