.class public final Lg/me;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/gjf;
.implements Lg/dvz;
.implements Lg/jq;
.implements Lg/glt;


# instance fields
.field public final b:Lg/amp;

.field public final c:Lg/grq;

.field public final d:Z

.field public final e:Landroid/graphics/Matrix;

.field public final f:Lg/bsb;

.field public g:Lg/bl;

.field public final h:Landroid/graphics/Path;

.field public final i:Lg/fts;

.field public final j:Lg/bsb;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/egv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/me;->e:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/me;->h:Landroid/graphics/Path;

    iput-object p1, p0, Lg/me;->i:Lg/fts;

    iput-object p2, p0, Lg/me;->c:Lg/grq;

    iget-boolean p1, p3, Lg/egv;->f:Z

    iput-boolean p1, p0, Lg/me;->d:Z

    iget-object p1, p3, Lg/egv;->d:Lg/cnc;

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lg/bsb;

    iput-object v0, p0, Lg/me;->f:Lg/bsb;

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    iget-object p1, p3, Lg/egv;->a:Lg/eqn;

    check-cast p1, Lg/cnc;

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lg/bsb;

    iput-object v0, p0, Lg/me;->j:Lg/bsb;

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    iget-object p1, p3, Lg/egv;->b:Ljava/lang/Object;

    check-cast p1, Lg/eld;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lg/amp;

    invoke-direct {p3, p1}, Lg/amp;-><init>(Lg/eld;)V

    iput-object p3, p0, Lg/me;->b:Lg/amp;

    invoke-virtual {p3, p2}, Lg/amp;->s(Lg/grq;)V

    invoke-virtual {p3, p0}, Lg/amp;->r(Lg/fyj;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ListIterator;)V
    .locals 7

    iget-object v0, p0, Lg/me;->g:Lg/bl;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Lg/bl;

    iget-boolean v4, p0, Lg/me;->d:Z

    const/4 v6, 0x0

    iget-object v2, p0, Lg/me;->i:Lg/fts;

    iget-object v3, p0, Lg/me;->c:Lg/grq;

    invoke-direct/range {v1 .. v6}, Lg/bl;-><init>(Lg/fts;Lg/grq;ZLjava/util/ArrayList;Lg/eld;)V

    iput-object v1, p0, Lg/me;->g:Lg/bl;

    return-void
.end method

.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/me;->i:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lg/me;->f:Lg/bsb;

    invoke-virtual {v0}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lg/me;->j:Lg/bsb;

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lg/me;->b:Lg/amp;

    iget-object v3, v2, Lg/amp;->i:Lg/bsb;

    invoke-virtual {v3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v5, v2, Lg/amp;->c:Lg/bsb;

    invoke-virtual {v5}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v6, p0, Lg/me;->e:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    int-to-float v7, v4

    add-float v8, v7, v1

    invoke-virtual {v2, v8}, Lg/amp;->q(F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v8, p3

    div-float/2addr v7, v0

    invoke-static {v3, v5, v7}, Lg/din;->d(FFF)F

    move-result v7

    mul-float v7, v7, v8

    iget-object v8, p0, Lg/me;->g:Lg/bl;

    float-to-int v7, v7

    invoke-virtual {v8, p1, v6, v7}, Lg/bl;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lg/me;->g:Lg/bl;

    invoke-virtual {v0, p1, p2, p3}, Lg/bl;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lg/me;->g:Lg/bl;

    invoke-virtual {v0, p1, p2}, Lg/bl;->n(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final p()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lg/me;->g:Lg/bl;

    invoke-virtual {v0}, Lg/bl;->p()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lg/me;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lg/me;->f:Lg/bsb;

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lg/me;->j:Lg/bsb;

    invoke-virtual {v3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    int-to-float v4, v2

    add-float/2addr v4, v3

    iget-object v5, p0, Lg/me;->b:Lg/amp;

    invoke-virtual {v5, v4}, Lg/amp;->q(F)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lg/me;->e:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
