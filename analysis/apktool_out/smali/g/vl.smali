.class public final Lg/vl;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/dvz;
.implements Lg/glt;


# instance fields
.field public final a:Lg/fts;

.field public final b:Lg/gfy;

.field public final c:Z

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/graphics/Path;

.field public final f:Lg/dph;

.field public final g:Lg/bsb;

.field public final h:Lg/gee;

.field public i:F

.field public final j:Lg/grq;

.field public final k:Lg/dph;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/gjw;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/vl;->e:Landroid/graphics/Path;

    new-instance v1, Lg/gee;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/gee;-><init>(II)V

    iput-object v1, p0, Lg/vl;->h:Lg/gee;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/vl;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/vl;->j:Lg/grq;

    iget-object v1, p3, Lg/gjw;->a:Lg/dlz;

    iget-object v2, p3, Lg/gjw;->f:Lg/dlz;

    iget-boolean v3, p3, Lg/gjw;->b:Z

    iput-boolean v3, p0, Lg/vl;->c:Z

    iput-object p1, p0, Lg/vl;->a:Lg/fts;

    invoke-virtual {p2}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    iget-object p1, p1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/cnc;

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lg/bsb;

    iput-object v3, p0, Lg/vl;->g:Lg/bsb;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    :cond_0
    invoke-virtual {p2}, Lg/grq;->c()Lg/fzn;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lg/gfy;

    invoke-virtual {p2}, Lg/grq;->c()Lg/fzn;

    move-result-object v3

    invoke-direct {p1, p0, p2, v3}, Lg/gfy;-><init>(Lg/fyj;Lg/grq;Lg/fzn;)V

    iput-object p1, p0, Lg/vl;->b:Lg/gfy;

    :cond_1
    if-eqz v2, :cond_2

    iget-object p1, p3, Lg/gjw;->d:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {v2}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lg/dph;

    iput-object p3, p0, Lg/vl;->f:Lg/dph;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lg/dph;

    iput-object p3, p0, Lg/vl;->k:Lg/dph;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lg/vl;->f:Lg/dph;

    iput-object p1, p0, Lg/vl;->k:Lg/dph;

    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/vl;->a:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-boolean v0, p0, Lg/vl;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/vl;->f:Lg/dph;

    invoke-virtual {v0}, Lg/cej;->n()Lg/flj;

    move-result-object v1

    invoke-virtual {v0}, Lg/cej;->k()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/dph;->c(Lg/flj;F)I

    move-result v0

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lg/vl;->k:Lg/dph;

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float p3, p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float p3, p3, v1

    float-to-int p3, p3

    const/16 v1, 0xff

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr p3, v0

    iget-object v0, p0, Lg/vl;->h:Lg/gee;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lg/vl;->g:Lg/bsb;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    :cond_1
    iget v2, p0, Lg/vl;->i:F

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/vl;->j:Lg/grq;

    iget v3, v2, Lg/grq;->ba:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_2

    iget-object v2, v2, Lg/grq;->aj:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p3, v4

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v3, v2, Lg/grq;->aj:Landroid/graphics/BlurMaskFilter;

    iput p3, v2, Lg/grq;->ba:F

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_3
    :goto_1
    iput p3, p0, Lg/vl;->i:F

    :cond_4
    iget-object p3, p0, Lg/vl;->b:Lg/gfy;

    if-eqz p3, :cond_5

    invoke-virtual {p3, v0}, Lg/gfy;->h(Lg/gee;)V

    :cond_5
    iget-object p3, p0, Lg/vl;->e:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_2
    iget-object v2, p0, Lg/vl;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gjf;

    invoke-interface {v2}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lg/vl;->e:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/vl;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gjf;

    invoke-interface {v2}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dvz;

    instance-of v1, v0, Lg/gjf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/vl;->d:Ljava/util/ArrayList;

    check-cast v0, Lg/gjf;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
