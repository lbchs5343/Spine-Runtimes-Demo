.class public final Lg/dmv;
.super Lg/dtb;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:Ljava/lang/String;

.field public c:F

.field public d:F

.field public final e:Landroid/graphics/Matrix;

.field public f:F

.field public g:F

.field public final h:Ljava/util/ArrayList;

.field public final i:Landroid/graphics/Matrix;

.field public j:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/dmv;->e:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lg/dmv;->j:F

    iput v0, p0, Lg/dmv;->c:F

    iput v0, p0, Lg/dmv;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lg/dmv;->f:F

    iput v1, p0, Lg/dmv;->k:F

    iput v0, p0, Lg/dmv;->a:F

    iput v0, p0, Lg/dmv;->g:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/dmv;->i:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dmv;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/dmv;Lg/tl;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/dmv;->e:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lg/dmv;->j:F

    iput v0, p0, Lg/dmv;->c:F

    iput v0, p0, Lg/dmv;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lg/dmv;->f:F

    iput v1, p0, Lg/dmv;->k:F

    iput v0, p0, Lg/dmv;->a:F

    iput v0, p0, Lg/dmv;->g:F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lg/dmv;->i:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    iput-object v3, p0, Lg/dmv;->b:Ljava/lang/String;

    iget v3, p1, Lg/dmv;->j:F

    iput v3, p0, Lg/dmv;->j:F

    iget v3, p1, Lg/dmv;->c:F

    iput v3, p0, Lg/dmv;->c:F

    iget v3, p1, Lg/dmv;->d:F

    iput v3, p0, Lg/dmv;->d:F

    iget v3, p1, Lg/dmv;->f:F

    iput v3, p0, Lg/dmv;->f:F

    iget v3, p1, Lg/dmv;->k:F

    iput v3, p0, Lg/dmv;->k:F

    iget v3, p1, Lg/dmv;->a:F

    iput v3, p0, Lg/dmv;->a:F

    iget v3, p1, Lg/dmv;->g:F

    iput v3, p0, Lg/dmv;->g:F

    iget-object v3, p1, Lg/dmv;->b:Ljava/lang/String;

    iput-object v3, p0, Lg/dmv;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p2, v3, p0}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Lg/dmv;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Lg/dmv;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lg/dmv;

    if-eqz v4, :cond_1

    check-cast v3, Lg/dmv;

    iget-object v4, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    new-instance v5, Lg/dmv;

    invoke-direct {v5, v3, p2}, Lg/dmv;-><init>(Lg/dmv;Lg/tl;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lg/atx;

    if-eqz v4, :cond_2

    new-instance v4, Lg/atx;

    check-cast v3, Lg/atx;

    invoke-direct {v4, v3}, Lg/rq;-><init>(Lg/rq;)V

    iput v0, v4, Lg/atx;->i:F

    iput v1, v4, Lg/atx;->n:F

    iput v1, v4, Lg/atx;->d:F

    iput v0, v4, Lg/atx;->l:F

    iput v1, v4, Lg/atx;->m:F

    iput v0, v4, Lg/atx;->e:F

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lg/atx;->h:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lg/atx;->k:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v4, Lg/atx;->f:F

    iget-object v5, v3, Lg/atx;->g:Lg/dsg;

    iput-object v5, v4, Lg/atx;->g:Lg/dsg;

    iget v5, v3, Lg/atx;->i:F

    iput v5, v4, Lg/atx;->i:F

    iget v5, v3, Lg/atx;->n:F

    iput v5, v4, Lg/atx;->n:F

    iget-object v5, v3, Lg/atx;->j:Lg/dsg;

    iput-object v5, v4, Lg/atx;->j:Lg/dsg;

    iget v5, v3, Lg/rq;->c:I

    iput v5, v4, Lg/rq;->c:I

    iget v5, v3, Lg/atx;->d:F

    iput v5, v4, Lg/atx;->d:F

    iget v5, v3, Lg/atx;->l:F

    iput v5, v4, Lg/atx;->l:F

    iget v5, v3, Lg/atx;->m:F

    iput v5, v4, Lg/atx;->m:F

    iget v5, v3, Lg/atx;->e:F

    iput v5, v4, Lg/atx;->e:F

    iget-object v5, v3, Lg/atx;->h:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lg/atx;->h:Landroid/graphics/Paint$Cap;

    iget-object v5, v3, Lg/atx;->k:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lg/atx;->k:Landroid/graphics/Paint$Join;

    iget v3, v3, Lg/atx;->f:F

    iput v3, v4, Lg/atx;->f:F

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lg/aff;

    if-eqz v4, :cond_4

    new-instance v4, Lg/aff;

    check-cast v3, Lg/aff;

    invoke-direct {v4, v3}, Lg/rq;-><init>(Lg/rq;)V

    :goto_1
    iget-object v3, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lg/rq;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p2, v3, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dmv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lg/dmv;->i:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, Lg/dmv;->c:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, Lg/dmv;->d:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lg/dmv;->j:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lg/dmv;->f:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lg/dmv;->k:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, Lg/dmv;->a:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    iget v0, p0, Lg/dmv;->g:F

    return v0
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lg/dmv;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lg/dmv;->c:F

    neg-float v1, v1

    iget v2, p0, Lg/dmv;->d:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Lg/dmv;->f:F

    iget v2, p0, Lg/dmv;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Lg/dmv;->j:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, p0, Lg/dmv;->a:F

    iget v2, p0, Lg/dmv;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lg/dmv;->g:F

    iget v3, p0, Lg/dmv;->d:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final o()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dtb;

    invoke-virtual {v2}, Lg/dtb;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final p([I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/dmv;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/dtb;

    invoke-virtual {v2, p1}, Lg/dtb;->p([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->c:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->d:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->j:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->f:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->k:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->a:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, Lg/dmv;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lg/dmv;->g:F

    invoke-virtual {p0}, Lg/dmv;->l()V

    :cond_0
    return-void
.end method
