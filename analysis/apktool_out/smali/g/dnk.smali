.class public final Lg/dnk;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I

.field public aa:I

.field public ab:Z

.field public ac:I

.field public ad:I

.field public ae:Z

.field public af:I

.field public ag:I

.field public ah:Z

.field public ai:I

.field public aj:I

.field public ak:I

.field public al:I

.field public am:I

.field public an:I

.field public ao:I

.field public ap:Z

.field public aq:F

.field public ar:I

.field public as:I

.field public at:I

.field public au:I

.field public av:I

.field public aw:Lg/brh;

.field public ax:I

.field public ay:I

.field public az:I

.field public b:I

.field public ba:I

.field public bb:F

.field public bc:I

.field public bd:Z

.field public be:F

.field public bf:F

.field public bg:I

.field public bh:I

.field public bi:F

.field public bj:I

.field public bk:F

.field public bl:F

.field public bm:I

.field public bn:I

.field public bo:F

.field public bp:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:F

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:I

.field public r:I

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# virtual methods
.method public final bq()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dnk;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/dnk;->ap:Z

    iput-boolean v1, p0, Lg/dnk;->ab:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v4, p0, Lg/dnk;->ah:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p0, Lg/dnk;->ap:Z

    iget v4, p0, Lg/dnk;->g:I

    if-nez v4, :cond_0

    iput v1, p0, Lg/dnk;->g:I

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_1

    iget-boolean v5, p0, Lg/dnk;->ae:Z

    if-eqz v5, :cond_1

    iput-boolean v0, p0, Lg/dnk;->ab:Z

    iget v5, p0, Lg/dnk;->ad:I

    if-nez v5, :cond_1

    iput v1, p0, Lg/dnk;->ad:I

    :cond_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    iput-boolean v0, p0, Lg/dnk;->ap:Z

    if-nez v2, :cond_3

    iget v2, p0, Lg/dnk;->g:I

    if-ne v2, v1, :cond_3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v1, p0, Lg/dnk;->ah:Z

    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    iput-boolean v0, p0, Lg/dnk;->ab:Z

    if-nez v4, :cond_5

    iget v0, p0, Lg/dnk;->ad:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v1, p0, Lg/dnk;->ae:Z

    :cond_5
    iget v0, p0, Lg/dnk;->bf:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    iget v0, p0, Lg/dnk;->y:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Lg/dnk;->au:I

    if-eq v0, v5, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_0
    iput-boolean v1, p0, Lg/dnk;->i:Z

    iput-boolean v1, p0, Lg/dnk;->ap:Z

    iput-boolean v1, p0, Lg/dnk;->ab:Z

    iget-object v0, p0, Lg/dnk;->aw:Lg/brh;

    instance-of v0, v0, Lg/aar;

    if-nez v0, :cond_8

    new-instance v0, Lg/aar;

    invoke-direct {v0}, Lg/aar;-><init>()V

    iput-object v0, p0, Lg/dnk;->aw:Lg/brh;

    :cond_8
    iget-object v0, p0, Lg/dnk;->aw:Lg/brh;

    check-cast v0, Lg/aar;

    iget v1, p0, Lg/dnk;->q:I

    invoke-virtual {v0, v1}, Lg/aar;->n(I)V

    return-void
.end method

.method public final resolveLayoutDirection(I)V
    .locals 10

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lg/dnk;->e:I

    iput v4, p0, Lg/dnk;->b:I

    iput v4, p0, Lg/dnk;->bh:I

    iput v4, p0, Lg/dnk;->v:I

    iget v5, p0, Lg/dnk;->ai:I

    iput v5, p0, Lg/dnk;->bg:I

    iget v5, p0, Lg/dnk;->k:I

    iput v5, p0, Lg/dnk;->ak:I

    iget v5, p0, Lg/dnk;->bl:F

    iput v5, p0, Lg/dnk;->bi:F

    iget v6, p0, Lg/dnk;->y:I

    iput v6, p0, Lg/dnk;->h:I

    iget v7, p0, Lg/dnk;->au:I

    iput v7, p0, Lg/dnk;->at:I

    iget v8, p0, Lg/dnk;->bf:F

    iput v8, p0, Lg/dnk;->n:F

    const/high16 v9, -0x80000000

    if-eqz p1, :cond_a

    iget p1, p0, Lg/dnk;->am:I

    if-eq p1, v4, :cond_1

    iput p1, p0, Lg/dnk;->e:I

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    iget p1, p0, Lg/dnk;->ba:I

    if-eq p1, v4, :cond_2

    iput p1, p0, Lg/dnk;->b:I

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lg/dnk;->z:I

    if-eq p1, v4, :cond_3

    iput p1, p0, Lg/dnk;->v:I

    const/4 v2, 0x1

    :cond_3
    iget p1, p0, Lg/dnk;->ag:I

    if-eq p1, v4, :cond_4

    iput p1, p0, Lg/dnk;->bh:I

    const/4 v2, 0x1

    :cond_4
    iget p1, p0, Lg/dnk;->az:I

    if-eq p1, v9, :cond_5

    iput p1, p0, Lg/dnk;->ak:I

    :cond_5
    iget p1, p0, Lg/dnk;->t:I

    if-eq p1, v9, :cond_6

    iput p1, p0, Lg/dnk;->bg:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    sub-float v2, p1, v5

    iput v2, p0, Lg/dnk;->bi:F

    :cond_7
    iget-boolean v2, p0, Lg/dnk;->i:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lg/dnk;->q:I

    if-ne v2, v3, :cond_10

    iget-boolean v2, p0, Lg/dnk;->s:Z

    if-eqz v2, :cond_10

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v8, v2

    if-eqz v3, :cond_8

    sub-float/2addr p1, v8

    iput p1, p0, Lg/dnk;->n:F

    iput v4, p0, Lg/dnk;->h:I

    iput v4, p0, Lg/dnk;->at:I

    goto :goto_3

    :cond_8
    if-eq v6, v4, :cond_9

    iput v6, p0, Lg/dnk;->at:I

    iput v4, p0, Lg/dnk;->h:I

    iput v2, p0, Lg/dnk;->n:F

    goto :goto_3

    :cond_9
    if-eq v7, v4, :cond_10

    iput v7, p0, Lg/dnk;->h:I

    iput v4, p0, Lg/dnk;->at:I

    iput v2, p0, Lg/dnk;->n:F

    goto :goto_3

    :cond_a
    iget p1, p0, Lg/dnk;->am:I

    if-eq p1, v4, :cond_b

    iput p1, p0, Lg/dnk;->v:I

    :cond_b
    iget p1, p0, Lg/dnk;->ba:I

    if-eq p1, v4, :cond_c

    iput p1, p0, Lg/dnk;->bh:I

    :cond_c
    iget p1, p0, Lg/dnk;->z:I

    if-eq p1, v4, :cond_d

    iput p1, p0, Lg/dnk;->e:I

    :cond_d
    iget p1, p0, Lg/dnk;->ag:I

    if-eq p1, v4, :cond_e

    iput p1, p0, Lg/dnk;->b:I

    :cond_e
    iget p1, p0, Lg/dnk;->az:I

    if-eq p1, v9, :cond_f

    iput p1, p0, Lg/dnk;->bg:I

    :cond_f
    iget p1, p0, Lg/dnk;->t:I

    if-eq p1, v9, :cond_10

    iput p1, p0, Lg/dnk;->ak:I

    :cond_10
    :goto_3
    iget p1, p0, Lg/dnk;->z:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lg/dnk;->ag:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lg/dnk;->ba:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lg/dnk;->am:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lg/dnk;->bn:I

    if-eq p1, v4, :cond_11

    iput p1, p0, Lg/dnk;->e:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_11
    iget p1, p0, Lg/dnk;->c:I

    if-eq p1, v4, :cond_12

    iput p1, p0, Lg/dnk;->b:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    :goto_4
    iget p1, p0, Lg/dnk;->w:I

    if-eq p1, v4, :cond_13

    iput p1, p0, Lg/dnk;->bh:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    :cond_13
    iget p1, p0, Lg/dnk;->aj:I

    if-eq p1, v4, :cond_14

    iput p1, p0, Lg/dnk;->v:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    return-void
.end method
