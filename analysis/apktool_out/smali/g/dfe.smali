.class public final Lg/dfe;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lg/dfe;->a:I

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/dfe;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/view/View;

    sget-object v0, Lg/ebi;->a:Lg/bli;

    invoke-virtual {v0, p1}, Lg/bli;->aa(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->ad:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lg/fxk;

    iget p1, p1, Lg/fxk;->n:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lg/cmj;

    iget p1, p1, Lg/cmj;->h:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lg/dzo;

    invoke-virtual {p1}, Lg/dzo;->r()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lg/dpk;

    iget p1, p1, Lg/dpk;->p:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lg/dpk;

    iget p1, p1, Lg/dpk;->l:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lg/bgo;

    iget p1, p1, Lg/bgo;->p:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lg/bgo;

    iget p1, p1, Lg/bgo;->l:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_a
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_b
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_c
    check-cast p1, Lg/bor;

    const/4 p1, 0x0

    return-object p1

    :pswitch_d
    check-cast p1, Lg/bor;

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lg/dfe;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lg/ebi;->a:Lg/bli;

    invoke-virtual {v0, p1, p2}, Lg/bli;->z(Landroid/view/View;F)V

    return-void

    :pswitch_1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    :pswitch_2
    check-cast p1, Lg/fxk;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/fxk;->n:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Lg/fxk;->l:[Landroid/view/animation/Interpolator;

    iget-object v1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/agm;

    sget-object v5, Lg/fxk;->h:[I

    mul-int/lit8 v6, v3, 0x2

    aget v7, v5, v6

    sget-object v8, Lg/fxk;->d:[I

    aget v9, v8, v6

    invoke-static {p2, v7, v9}, Lg/cgo;->ac(III)F

    move-result v7

    aget-object v9, v0, v6

    invoke-interface {v9, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Lg/dzm;->ac(FFF)F

    move-result v7

    iput v7, v4, Lg/agm;->d:F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aget v7, v8, v6

    invoke-static {p2, v5, v7}, Lg/cgo;->ac(III)F

    move-result v5

    aget-object v6, v0, v6

    invoke-interface {v6, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v5, v9, v10}, Lg/dzm;->ac(FFF)F

    move-result v5

    iput v5, v4, Lg/agm;->f:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Lg/fxk;->j:Z

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/agm;

    iget-object v1, p1, Lg/fxk;->m:Lg/cvs;

    iget-object v1, v1, Lg/dzw;->r:[I

    iget v3, p1, Lg/fxk;->q:I

    aget v1, v1, v3

    iput v1, v0, Lg/agm;->g:I

    goto :goto_1

    :cond_1
    iput-boolean v2, p1, Lg/fxk;->j:Z

    :cond_2
    iget-object p1, p1, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast p1, Lg/fkr;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_3
    check-cast p1, Lg/cmj;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/cmj;->h:F

    const v0, 0x43a68000    # 333.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    const/4 v3, 0x0

    iput v3, v2, Lg/agm;->d:F

    const/16 v2, 0x29b

    invoke-static {p2, v1, v2}, Lg/cgo;->ac(III)F

    move-result p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/agm;

    iget-object v5, p1, Lg/cmj;->i:Lg/fca;

    invoke-virtual {v5, p2}, Lg/a;->getInterpolation(F)F

    move-result v6

    iput v6, v4, Lg/agm;->d:F

    iput v6, v2, Lg/agm;->f:F

    const v2, 0x3eff9dbf

    add-float/2addr p2, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/agm;

    invoke-virtual {v5, p2}, Lg/a;->getInterpolation(F)F

    move-result p2

    iput p2, v6, Lg/agm;->d:F

    iput p2, v2, Lg/agm;->f:F

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/agm;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p2, Lg/agm;->f:F

    iget-boolean p2, p1, Lg/cmj;->m:Z

    if-eqz p2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/agm;

    iget p2, p2, Lg/agm;->f:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/agm;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    iget v2, v2, Lg/agm;->g:I

    iput v2, p2, Lg/agm;->g:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/agm;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/agm;

    iget v2, v2, Lg/agm;->g:I

    iput v2, p2, Lg/agm;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/agm;

    iget-object v0, p1, Lg/cmj;->j:Lg/cvs;

    iget-object v0, v0, Lg/dzw;->r:[I

    iget v2, p1, Lg/cmj;->k:I

    aget v0, v0, v2

    iput v0, p2, Lg/agm;->g:I

    iput-boolean v1, p1, Lg/cmj;->m:Z

    :cond_3
    iget-object p1, p1, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast p1, Lg/fkr;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_4
    check-cast p1, Lg/dzo;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p1, Lg/dzo;->k:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_4

    iput p2, p1, Lg/dzo;->k:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void

    :pswitch_5
    check-cast p1, Lg/dpk;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/dpk;->p:F

    return-void

    :pswitch_6
    check-cast p1, Lg/dpk;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/dpk;->l:F

    const v0, 0x45bb8000    # 6000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Lg/dpk;->n:Landroid/animation/TimeInterpolator;

    iget-object v1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/agm;

    const/high16 v4, 0x44870000    # 1080.0f

    iget v5, p1, Lg/dpk;->l:F

    mul-float v5, v5, v4

    sget-object v4, Lg/dpk;->j:[I

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    aget v10, v4, v8

    const/16 v11, 0x1f4

    invoke-static {p2, v10, v11}, Lg/cgo;->ac(III)F

    move-result v10

    invoke-interface {v0, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    const/high16 v11, 0x42b40000    # 90.0f

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    add-float/2addr v5, v9

    iput v5, v3, Lg/agm;->h:F

    const/16 v5, 0xbb8

    invoke-static {p2, v2, v5}, Lg/cgo;->ac(III)F

    move-result v6

    invoke-interface {v0, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {p2, v5, v5}, Lg/cgo;->ac(III)F

    move-result v5

    invoke-interface {v0, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v6, v5

    iput v7, v3, Lg/agm;->d:F

    sget-object v5, Lg/dpk;->k:[F

    aget v8, v5, v2

    const/4 v9, 0x1

    aget v5, v5, v9

    invoke-static {v8, v5, v6}, Lg/aky;->v(FFF)F

    move-result v5

    iput v5, v3, Lg/agm;->f:F

    iget v6, p1, Lg/dpk;->p:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_6

    sub-float v6, v8, v6

    mul-float v6, v6, v5

    iput v6, v3, Lg/agm;->f:F

    :cond_6
    const/4 v3, 0x0

    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_8

    aget v5, v4, v3

    const/16 v6, 0x64

    invoke-static {p2, v5, v6}, Lg/cgo;->ac(III)F

    move-result v5

    cmpl-float v6, v5, v7

    if-ltz v6, :cond_7

    cmpg-float v6, v5, v8

    if-gtz v6, :cond_7

    iget p2, p1, Lg/dpk;->s:I

    add-int/2addr v3, p2

    iget-object p2, p1, Lg/dpk;->o:Lg/alp;

    iget-object p2, p2, Lg/dzw;->r:[I

    array-length v4, p2

    rem-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    array-length v6, p2

    rem-int/2addr v4, v6

    aget v3, p2, v3

    aget p2, p2, v4

    invoke-interface {v0, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/agm;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lg/gtp;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v1, Lg/agm;->g:I

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p1, p1, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast p1, Lg/fkr;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_7
    check-cast p1, Lg/bgo;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/bgo;->p:F

    return-void

    :pswitch_8
    check-cast p1, Lg/bgo;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lg/bgo;->l:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Lg/bgo;->n:Lg/fca;

    iget-object v1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/agm;

    const/high16 v4, 0x44be0000    # 1520.0f

    iget v5, p1, Lg/bgo;->l:F

    mul-float v5, v5, v4

    const/high16 v4, -0x3e600000    # -20.0f

    add-float/2addr v4, v5

    iput v4, v3, Lg/agm;->d:F

    iput v5, v3, Lg/agm;->f:F

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x4

    if-ge v4, v5, :cond_9

    sget-object v5, Lg/bgo;->d:[I

    aget v5, v5, v4

    const/16 v6, 0x29b

    invoke-static {p2, v5, v6}, Lg/cgo;->ac(III)F

    move-result v5

    iget v7, v3, Lg/agm;->f:F

    invoke-virtual {v0, v5}, Lg/a;->getInterpolation(F)F

    move-result v5

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float v5, v5, v8

    add-float/2addr v5, v7

    iput v5, v3, Lg/agm;->f:F

    sget-object v5, Lg/bgo;->j:[I

    aget v5, v5, v4

    invoke-static {p2, v5, v6}, Lg/cgo;->ac(III)F

    move-result v5

    iget v6, v3, Lg/agm;->d:F

    invoke-virtual {v0, v5}, Lg/a;->getInterpolation(F)F

    move-result v5

    mul-float v5, v5, v8

    add-float/2addr v5, v6

    iput v5, v3, Lg/agm;->d:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    iget v4, v3, Lg/agm;->d:F

    iget v6, v3, Lg/agm;->f:F

    sub-float v7, v6, v4

    iget v8, p1, Lg/bgo;->p:F

    mul-float v7, v7, v8

    add-float/2addr v7, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v7, v4

    iput v7, v3, Lg/agm;->d:F

    div-float/2addr v6, v4

    iput v6, v3, Lg/agm;->f:F

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_b

    sget-object v4, Lg/bgo;->k:[I

    aget v4, v4, v3

    const/16 v6, 0x14d

    invoke-static {p2, v4, v6}, Lg/cgo;->ac(III)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_a

    iget p2, p1, Lg/bgo;->s:I

    add-int/2addr v3, p2

    iget-object p2, p1, Lg/bgo;->o:Lg/alp;

    iget-object p2, p2, Lg/dzw;->r:[I

    array-length v5, p2

    rem-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x1

    array-length v6, p2

    rem-int/2addr v5, v6

    aget v3, p2, v3

    aget p2, p2, v5

    invoke-virtual {v0, v4}, Lg/a;->getInterpolation(F)F

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/agm;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lg/gtp;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v1, Lg/agm;->g:I

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    iget-object p1, p1, Lg/cgo;->aa:Ljava/lang/Object;

    check-cast p1, Lg/fkr;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lg/ebi;->c(Landroid/view/View;IIII)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lg/ebi;->c(Landroid/view/View;IIII)V

    return-void

    :pswitch_b
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lg/ebi;->c(Landroid/view/View;IIII)V

    return-void

    :pswitch_c
    check-cast p1, Lg/bor;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lg/bor;->f:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lg/bor;->a:I

    iget v0, p1, Lg/bor;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/bor;->g:I

    iget v1, p1, Lg/bor;->d:I

    if-ne v1, v0, :cond_c

    iget-object v0, p1, Lg/bor;->b:Landroid/view/View;

    iget v1, p1, Lg/bor;->c:I

    iget v2, p1, Lg/bor;->e:I

    iget v3, p1, Lg/bor;->f:I

    invoke-static {v0, v1, v2, v3, p2}, Lg/ebi;->c(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lg/bor;->d:I

    iput p2, p1, Lg/bor;->g:I

    :cond_c
    return-void

    :pswitch_d
    check-cast p1, Lg/bor;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lg/bor;->c:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lg/bor;->e:I

    iget v0, p1, Lg/bor;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/bor;->d:I

    iget v1, p1, Lg/bor;->g:I

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Lg/bor;->b:Landroid/view/View;

    iget v1, p1, Lg/bor;->c:I

    iget v2, p1, Lg/bor;->f:I

    iget v3, p1, Lg/bor;->a:I

    invoke-static {v0, v1, p2, v2, v3}, Lg/ebi;->c(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lg/bor;->d:I

    iput p2, p1, Lg/bor;->g:I

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
