.class public abstract Lg/cej;
.super Ljava/lang/Object;


# instance fields
.field public d:F

.field public e:Ljava/lang/Object;

.field public final f:Ljava/util/ArrayList;

.field public g:F

.field public h:Z

.field public final i:Lg/gmo;

.field public j:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/cej;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/cej;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lg/cej;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cej;->e:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/cej;->g:F

    iput v0, p0, Lg/cej;->j:F

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lg/fbc;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lg/fbc;-><init>(I)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lg/fr;

    invoke-direct {v0, p1}, Lg/fr;-><init>(Ljava/util/List;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lg/ey;

    invoke-direct {v0, p1}, Lg/ey;-><init>(Ljava/util/List;)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lg/cej;->i:Lg/gmo;

    return-void
.end method


# virtual methods
.method public abstract b(Lg/flj;F)Ljava/lang/Object;
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lg/cej;->n()Lg/flj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/flj;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg/flj;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lg/cej;->q()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(Lg/fyj;)V
    .locals 1

    iget-object v0, p0, Lg/cej;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lg/cej;->q()F

    move-result v0

    iget-object v1, p0, Lg/cej;->i:Lg/gmo;

    invoke-interface {v1, v0}, Lg/gmo;->g(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lg/cej;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/cej;->n()Lg/flj;

    move-result-object v1

    iget-object v2, v1, Lg/flj;->j:Landroid/view/animation/Interpolator;

    iget-object v3, v1, Lg/flj;->l:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lg/cej;->o(Lg/flj;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/cej;->k()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lg/cej;->b(Lg/flj;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg/cej;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final n()Lg/flj;
    .locals 1

    iget-object v0, p0, Lg/cej;->i:Lg/gmo;

    invoke-interface {v0}, Lg/gmo;->d()Lg/flj;

    move-result-object v0

    invoke-static {}, Lg/buj;->bd()V

    return-object v0
.end method

.method public o(Lg/flj;FFF)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This animation does not support split dimensions!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(F)V
    .locals 4

    iget-object v0, p0, Lg/cej;->i:Lg/gmo;

    invoke-interface {v0}, Lg/gmo;->dq()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lg/cej;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-interface {v0}, Lg/gmo;->ox()F

    move-result v1

    iput v1, p0, Lg/cej;->g:F

    :cond_1
    iget v1, p0, Lg/cej;->g:F

    cmpg-float v3, p1, v1

    if-gez v3, :cond_3

    cmpl-float p1, v1, v2

    if-nez p1, :cond_2

    invoke-interface {v0}, Lg/gmo;->ox()F

    move-result p1

    iput p1, p0, Lg/cej;->g:F

    :cond_2
    iget p1, p0, Lg/cej;->g:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lg/cej;->j:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    invoke-interface {v0}, Lg/gmo;->_bu()F

    move-result v1

    iput v1, p0, Lg/cej;->j:F

    :cond_4
    iget v1, p0, Lg/cej;->j:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_6

    cmpl-float p1, v1, v2

    if-nez p1, :cond_5

    invoke-interface {v0}, Lg/gmo;->_bu()F

    move-result p1

    iput p1, p0, Lg/cej;->j:F

    :cond_5
    iget p1, p0, Lg/cej;->j:F

    :cond_6
    :goto_0
    iget v1, p0, Lg/cej;->d:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iput p1, p0, Lg/cej;->d:F

    invoke-interface {v0, p1}, Lg/gmo;->dq(F)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lg/cej;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fyj;

    invoke-interface {v0}, Lg/fyj;->dq()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public final q()F
    .locals 3

    iget-boolean v0, p0, Lg/cej;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/cej;->n()Lg/flj;

    move-result-object v0

    invoke-virtual {v0}, Lg/flj;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v1, p0, Lg/cej;->d:F

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lg/flj;->u()F

    move-result v2

    invoke-virtual {v0}, Lg/flj;->t()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method
