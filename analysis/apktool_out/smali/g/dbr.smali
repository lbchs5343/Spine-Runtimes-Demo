.class public final Lg/dbr;
.super Lg/gbi;
.source "SourceFile"


# instance fields
.field public a:F

.field public aa:I

.field public ab:I

.field public ac:I

.field public ae:[Lg/brh;

.field public ag:I

.field public ah:I

.field public aj:I

.field public al:I

.field public b:F

.field public c:F

.field public d:F

.field public ej:[Lg/brh;

.field public ek:I

.field public el:[Lg/brh;

.field public em:I

.field public en:I

.field public eo:I

.field public ep:I

.field public eq:I

.field public f:I

.field public h:Lg/dcu;

.field public l:I

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:Ljava/util/ArrayList;

.field public s:[I

.field public t:I

.field public u:Z

.field public v:F

.field public w:I

.field public x:Lg/gri;

.field public y:I

.field public z:I


# virtual methods
.method public final er(Lg/brh;Lg/fol;ILg/fol;I)V
    .locals 3

    iget-object v0, p0, Lg/dbr;->h:Lg/dcu;

    :goto_0
    iget-object v1, p0, Lg/dbr;->x:Lg/gri;

    if-nez v1, :cond_0

    iget-object v2, p0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_0

    check-cast v2, Lg/aep;

    iget-object v1, v2, Lg/aep;->y:Lg/gri;

    iput-object v1, p0, Lg/dbr;->x:Lg/gri;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lg/dcu;->d:Lg/fol;

    iput-object p4, v0, Lg/dcu;->g:Lg/fol;

    iput p3, v0, Lg/dcu;->i:I

    iput p5, v0, Lg/dcu;->b:I

    invoke-virtual {v1, p1, v0}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget p2, v0, Lg/dcu;->c:I

    invoke-virtual {p1, p2}, Lg/brh;->ed(I)V

    iget p2, v0, Lg/dcu;->e:I

    invoke-virtual {p1, p2}, Lg/brh;->dj(I)V

    iget-boolean p2, v0, Lg/dcu;->a:Z

    iput-boolean p2, p1, Lg/brh;->cx:Z

    iget p2, v0, Lg/dcu;->j:I

    invoke-virtual {p1, p2}, Lg/brh;->ee(I)V

    return-void
.end method

.method public final es(Lg/brh;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lg/brh;->ch:[Lg/fol;

    aget-object v2, v1, v0

    sget-object v3, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v2, v3, :cond_5

    iget v2, p1, Lg/brh;->da:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p1, Lg/brh;->bu:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int v7, v0

    invoke-virtual {p1}, Lg/brh;->eb()I

    move-result p2

    if-eq v7, p2, :cond_2

    iput-boolean v3, p1, Lg/brh;->cz:Z

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    aget-object v8, v1, v3

    invoke-virtual {p1}, Lg/brh;->di()I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lg/dbr;->er(Lg/brh;Lg/fol;ILg/fol;I)V

    :cond_2
    return v7

    :cond_3
    move-object v5, p1

    if-ne v2, v3, :cond_4

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v2, p1, :cond_6

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result p1

    int-to-float p1, p1

    iget p2, v5, Lg/brh;->bq:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v5, p1

    :cond_6
    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result p1

    return p1
.end method

.method public final et(Lg/brh;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lg/brh;->ch:[Lg/fol;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v3, v4, :cond_5

    iget v3, p1, Lg/brh;->by:I

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v3, p1, Lg/brh;->am:F

    int-to-float p2, p2

    mul-float v3, v3, p2

    float-to-int v9, v3

    invoke-virtual {p1}, Lg/brh;->di()I

    move-result p2

    if-eq v9, p2, :cond_2

    iput-boolean v2, p1, Lg/brh;->cz:Z

    aget-object v6, v1, v0

    invoke-virtual {p1}, Lg/brh;->eb()I

    move-result v7

    sget-object v8, Lg/fol;->FIXED:Lg/fol;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lg/dbr;->er(Lg/brh;Lg/fol;ILg/fol;I)V

    :cond_2
    return v9

    :cond_3
    move-object v5, p1

    if-ne v3, v2, :cond_4

    invoke-virtual {v5}, Lg/brh;->di()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v3, p1, :cond_6

    invoke-virtual {v5}, Lg/brh;->eb()I

    move-result p1

    int-to-float p1, p1

    iget p2, v5, Lg/brh;->bq:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v5, p1

    :cond_6
    invoke-virtual {v5}, Lg/brh;->di()I

    move-result p1

    return p1
.end method

.method public final eu()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lg/gbi;->ev:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/gbi;->ew:[Lg/brh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/brh;->cn:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(Lg/bwo;Z)V
    .locals 11

    iget-object v0, p0, Lg/dbr;->r:Ljava/util/ArrayList;

    invoke-super {p0, p1, p2}, Lg/brh;->g(Lg/bwo;Z)V

    iget-object p1, p0, Lg/brh;->bj:Lg/brh;

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lg/aep;

    iget-boolean p1, p1, Lg/aep;->ab:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lg/dbr;->em:I

    if-eqz v2, :cond_1b

    if-eq v2, v1, :cond_19

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/afu;

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, p1, v3, v5}, Lg/afu;->w(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg/dbr;->s:[I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lg/dbr;->el:[Lg/brh;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lg/dbr;->ae:[Lg/brh;

    if-nez v0, :cond_4

    goto/16 :goto_e

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lg/dbr;->f:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lg/dbr;->ej:[Lg/brh;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lg/brh;->dr()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lg/dbr;->s:[I

    aget v2, v0, p2

    aget v0, v0, v1

    iget v3, p0, Lg/dbr;->p:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x8

    if-ge v5, v2, :cond_c

    if-eqz p1, :cond_6

    sub-int v3, v2, v5

    sub-int/2addr v3, v1

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lg/dbr;->p:F

    sub-float/2addr v7, v8

    goto :goto_5

    :cond_6
    move v7, v3

    move v3, v5

    :goto_5
    iget-object v8, p0, Lg/dbr;->el:[Lg/brh;

    aget-object v3, v8, v3

    if-eqz v3, :cond_b

    iget-object v8, v3, Lg/brh;->cw:Lg/hac;

    iget v9, v3, Lg/brh;->aq:I

    if-ne v9, v6, :cond_7

    goto :goto_6

    :cond_7
    if-nez v5, :cond_8

    iget-object v6, p0, Lg/brh;->cw:Lg/hac;

    iget v9, p0, Lg/dbr;->aa:I

    invoke-virtual {v3, v8, v6, v9}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    iget v6, p0, Lg/dbr;->ek:I

    iput v6, v3, Lg/brh;->cs:I

    iput v7, v3, Lg/brh;->cp:F

    :cond_8
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_9

    iget-object v6, v3, Lg/brh;->br:Lg/hac;

    iget-object v9, p0, Lg/brh;->br:Lg/hac;

    iget v10, p0, Lg/dbr;->eo:I

    invoke-virtual {v3, v6, v9, v10}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_9
    if-lez v5, :cond_a

    if-eqz v4, :cond_a

    iget-object v6, v4, Lg/brh;->br:Lg/hac;

    iget v9, p0, Lg/dbr;->ab:I

    invoke-virtual {v3, v8, v6, v9}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    invoke-virtual {v4, v6, v8, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_a
    move-object v4, v3

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_7
    if-ge p1, v0, :cond_12

    iget-object v3, p0, Lg/dbr;->ae:[Lg/brh;

    aget-object v3, v3, p1

    if-eqz v3, :cond_11

    iget-object v5, v3, Lg/brh;->bx:Lg/hac;

    iget v7, v3, Lg/brh;->aq:I

    if-ne v7, v6, :cond_d

    goto :goto_8

    :cond_d
    if-nez p1, :cond_e

    iget-object v7, p0, Lg/brh;->bx:Lg/hac;

    iget v8, p0, Lg/dbr;->al:I

    invoke-virtual {v3, v5, v7, v8}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    iget v7, p0, Lg/dbr;->q:I

    iput v7, v3, Lg/brh;->bw:I

    iget v7, p0, Lg/dbr;->a:F

    iput v7, v3, Lg/brh;->ct:F

    :cond_e
    add-int/lit8 v7, v0, -0x1

    if-ne p1, v7, :cond_f

    iget-object v7, v3, Lg/brh;->as:Lg/hac;

    iget-object v8, p0, Lg/brh;->as:Lg/hac;

    iget v9, p0, Lg/dbr;->n:I

    invoke-virtual {v3, v7, v8, v9}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_f
    if-lez p1, :cond_10

    if-eqz v4, :cond_10

    iget-object v7, v4, Lg/brh;->as:Lg/hac;

    iget v8, p0, Lg/dbr;->w:I

    invoke-virtual {v3, v5, v7, v8}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    invoke-virtual {v4, v7, v5, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_10
    move-object v4, v3

    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    const/4 p1, 0x0

    :goto_9
    if-ge p1, v2, :cond_1c

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_18

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Lg/dbr;->ag:I

    if-ne v5, v1, :cond_13

    mul-int v4, p1, v0

    add-int/2addr v4, v3

    :cond_13
    iget-object v5, p0, Lg/dbr;->ej:[Lg/brh;

    array-length v7, v5

    if-lt v4, v7, :cond_14

    goto :goto_b

    :cond_14
    aget-object v4, v5, v4

    if-eqz v4, :cond_17

    iget v5, v4, Lg/brh;->aq:I

    if-ne v5, v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lg/dbr;->el:[Lg/brh;

    aget-object v5, v5, p1

    iget-object v7, p0, Lg/dbr;->ae:[Lg/brh;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_16

    iget-object v8, v4, Lg/brh;->cw:Lg/hac;

    iget-object v9, v5, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v4, v8, v9, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    iget-object v8, v4, Lg/brh;->br:Lg/hac;

    iget-object v5, v5, Lg/brh;->br:Lg/hac;

    invoke-virtual {v4, v8, v5, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_16
    if-eq v4, v7, :cond_17

    iget-object v5, v4, Lg/brh;->bx:Lg/hac;

    iget-object v8, v7, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v4, v5, v8, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    iget-object v5, v4, Lg/brh;->as:Lg/hac;

    iget-object v7, v7, Lg/brh;->as:Lg/hac;

    invoke-virtual {v4, v5, v7, p2}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/afu;

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_d

    :cond_1a
    const/4 v5, 0x0

    :goto_d
    invoke-virtual {v4, p1, v3, v5}, Lg/afu;->w(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/afu;

    invoke-virtual {v0, p1, p2, v1}, Lg/afu;->w(ZIZ)V

    :cond_1c
    :goto_e
    iput-boolean p2, p0, Lg/dbr;->u:Z

    return-void
.end method
