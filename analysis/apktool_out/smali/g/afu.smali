.class public final Lg/afu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lg/hac;

.field public f:I

.field public g:Lg/hac;

.field public h:I

.field public i:Lg/hac;

.field public j:I

.field public k:I

.field public l:I

.field public m:Lg/brh;

.field public n:I

.field public o:I

.field public p:I

.field public q:Lg/hac;

.field public final synthetic r:Lg/dbr;


# direct methods
.method public constructor <init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/afu;->r:Lg/dbr;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/afu;->m:Lg/brh;

    const/4 v0, 0x0

    iput v0, p0, Lg/afu;->p:I

    iput v0, p0, Lg/afu;->f:I

    iput v0, p0, Lg/afu;->k:I

    iput v0, p0, Lg/afu;->d:I

    iput v0, p0, Lg/afu;->c:I

    iput v0, p0, Lg/afu;->j:I

    iput p2, p0, Lg/afu;->h:I

    iput-object p3, p0, Lg/afu;->e:Lg/hac;

    iput-object p4, p0, Lg/afu;->g:Lg/hac;

    iput-object p5, p0, Lg/afu;->i:Lg/hac;

    iput-object p6, p0, Lg/afu;->q:Lg/hac;

    iget p2, p1, Lg/dbr;->aa:I

    iput p2, p0, Lg/afu;->a:I

    iget p2, p1, Lg/dbr;->al:I

    iput p2, p0, Lg/afu;->l:I

    iget p2, p1, Lg/dbr;->eo:I

    iput p2, p0, Lg/afu;->n:I

    iget p1, p1, Lg/dbr;->n:I

    iput p1, p0, Lg/afu;->b:I

    iput p7, p0, Lg/afu;->o:I

    return-void
.end method


# virtual methods
.method public final s()I
    .locals 2

    iget v0, p0, Lg/afu;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lg/afu;->f:I

    iget-object v1, p0, Lg/afu;->r:Lg/dbr;

    iget v1, v1, Lg/dbr;->ab:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lg/afu;->f:I

    return v0
.end method

.method public final t(I)V
    .locals 9

    iget v0, p0, Lg/afu;->j:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Lg/afu;->c:I

    div-int v5, p1, v0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget v2, p0, Lg/afu;->d:I

    add-int v3, v2, v0

    move v4, v2

    iget-object v2, p0, Lg/afu;->r:Lg/dbr;

    iget v6, v2, Lg/dbr;->f:I

    if-lt v3, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lg/dbr;->ej:[Lg/brh;

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    iget v4, p0, Lg/afu;->h:I

    const/4 v6, 0x1

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    iget-object v4, v3, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v4, p1

    sget-object v8, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v7, v8, :cond_3

    iget v7, v3, Lg/brh;->da:I

    if-nez v7, :cond_3

    move-object v7, v4

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    aget-object v6, v7, v6

    invoke-virtual {v3}, Lg/brh;->di()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lg/dbr;->er(Lg/brh;Lg/fol;ILg/fol;I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, v3, Lg/brh;->ch:[Lg/fol;

    aget-object v6, v4, v6

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v6, v7, :cond_3

    iget v6, v3, Lg/brh;->by:I

    if-nez v6, :cond_3

    aget-object v4, v4, p1

    move v7, v5

    invoke-virtual {v3}, Lg/brh;->eb()I

    move-result v5

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual/range {v2 .. v7}, Lg/dbr;->er(Lg/brh;Lg/fol;ILg/fol;I)V

    move v5, v7

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iput p1, p0, Lg/afu;->f:I

    iput p1, p0, Lg/afu;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/afu;->m:Lg/brh;

    iput p1, p0, Lg/afu;->p:I

    iget v0, p0, Lg/afu;->c:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    iget v2, p0, Lg/afu;->d:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lg/afu;->r:Lg/dbr;

    iget v4, v3, Lg/dbr;->f:I

    if-lt v2, v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, v3, Lg/dbr;->ej:[Lg/brh;

    aget-object v2, v4, v2

    iget v4, p0, Lg/afu;->h:I

    const/16 v5, 0x8

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lg/brh;->eb()I

    move-result v4

    iget v6, v3, Lg/dbr;->ab:I

    iget v7, v2, Lg/brh;->aq:I

    if-ne v7, v5, :cond_6

    const/4 v6, 0x0

    :cond_6
    iget v5, p0, Lg/afu;->f:I

    add-int/2addr v4, v6

    add-int/2addr v4, v5

    iput v4, p0, Lg/afu;->f:I

    iget v4, p0, Lg/afu;->o:I

    invoke-virtual {v3, v2, v4}, Lg/dbr;->et(Lg/brh;I)I

    move-result v3

    iget-object v4, p0, Lg/afu;->m:Lg/brh;

    if-eqz v4, :cond_7

    iget v4, p0, Lg/afu;->p:I

    if-ge v4, v3, :cond_b

    :cond_7
    iput-object v2, p0, Lg/afu;->m:Lg/brh;

    iput v3, p0, Lg/afu;->p:I

    iput v3, p0, Lg/afu;->k:I

    goto :goto_4

    :cond_8
    iget v4, p0, Lg/afu;->o:I

    invoke-virtual {v3, v2, v4}, Lg/dbr;->es(Lg/brh;I)I

    move-result v4

    iget v6, p0, Lg/afu;->o:I

    invoke-virtual {v3, v2, v6}, Lg/dbr;->et(Lg/brh;I)I

    move-result v6

    iget v3, v3, Lg/dbr;->w:I

    iget v7, v2, Lg/brh;->aq:I

    if-ne v7, v5, :cond_9

    const/4 v3, 0x0

    :cond_9
    iget v5, p0, Lg/afu;->k:I

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    iput v6, p0, Lg/afu;->k:I

    iget-object v3, p0, Lg/afu;->m:Lg/brh;

    if-eqz v3, :cond_a

    iget v3, p0, Lg/afu;->p:I

    if-ge v3, v4, :cond_b

    :cond_a
    iput-object v2, p0, Lg/afu;->m:Lg/brh;

    iput v4, p0, Lg/afu;->p:I

    iput v4, p0, Lg/afu;->f:I

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method

.method public final u(Lg/brh;)V
    .locals 8

    iget v0, p0, Lg/afu;->h:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lg/afu;->r:Lg/dbr;

    if-nez v0, :cond_3

    iget v0, p0, Lg/afu;->o:I

    invoke-virtual {v4, p1, v0}, Lg/dbr;->es(Lg/brh;I)I

    move-result v0

    iget-object v5, p1, Lg/brh;->ch:[Lg/fol;

    aget-object v5, v5, v3

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v5, v6, :cond_0

    iget v0, p0, Lg/afu;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lg/afu;->j:I

    const/4 v0, 0x0

    :cond_0
    iget v5, v4, Lg/dbr;->ab:I

    iget v6, p1, Lg/brh;->aq:I

    if-ne v6, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v1, p0, Lg/afu;->f:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lg/afu;->f:I

    iget v0, p0, Lg/afu;->o:I

    invoke-virtual {v4, p1, v0}, Lg/dbr;->et(Lg/brh;I)I

    move-result v0

    iget-object v1, p0, Lg/afu;->m:Lg/brh;

    if-eqz v1, :cond_2

    iget v1, p0, Lg/afu;->p:I

    if-ge v1, v0, :cond_7

    :cond_2
    iput-object p1, p0, Lg/afu;->m:Lg/brh;

    iput v0, p0, Lg/afu;->p:I

    iput v0, p0, Lg/afu;->k:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lg/afu;->o:I

    invoke-virtual {v4, p1, v0}, Lg/dbr;->es(Lg/brh;I)I

    move-result v0

    iget v5, p0, Lg/afu;->o:I

    invoke-virtual {v4, p1, v5}, Lg/dbr;->et(Lg/brh;I)I

    move-result v5

    iget-object v6, p1, Lg/brh;->ch:[Lg/fol;

    aget-object v6, v6, v2

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v6, v7, :cond_4

    iget v5, p0, Lg/afu;->j:I

    add-int/2addr v5, v2

    iput v5, p0, Lg/afu;->j:I

    const/4 v5, 0x0

    :cond_4
    iget v4, v4, Lg/dbr;->w:I

    iget v6, p1, Lg/brh;->aq:I

    if-ne v6, v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iget v1, p0, Lg/afu;->k:I

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    iput v5, p0, Lg/afu;->k:I

    iget-object v1, p0, Lg/afu;->m:Lg/brh;

    if-eqz v1, :cond_6

    iget v1, p0, Lg/afu;->p:I

    if-ge v1, v0, :cond_7

    :cond_6
    iput-object p1, p0, Lg/afu;->m:Lg/brh;

    iput v0, p0, Lg/afu;->p:I

    iput v0, p0, Lg/afu;->f:I

    :cond_7
    :goto_2
    iget p1, p0, Lg/afu;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/afu;->c:I

    return-void
.end method

.method public final v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V
    .locals 0

    iput p1, p0, Lg/afu;->h:I

    iput-object p2, p0, Lg/afu;->e:Lg/hac;

    iput-object p3, p0, Lg/afu;->g:Lg/hac;

    iput-object p4, p0, Lg/afu;->i:Lg/hac;

    iput-object p5, p0, Lg/afu;->q:Lg/hac;

    iput p6, p0, Lg/afu;->a:I

    iput p7, p0, Lg/afu;->l:I

    iput p8, p0, Lg/afu;->n:I

    iput p9, p0, Lg/afu;->b:I

    iput p10, p0, Lg/afu;->o:I

    return-void
.end method

.method public final w(ZIZ)V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lg/afu;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lg/afu;->r:Lg/dbr;

    if-ge v3, v1, :cond_2

    iget v5, v0, Lg/afu;->d:I

    add-int/2addr v5, v3

    iget v6, v4, Lg/dbr;->f:I

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lg/dbr;->ej:[Lg/brh;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lg/brh;->dr()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3c

    iget-object v3, v0, Lg/afu;->m:Lg/brh;

    if-nez v3, :cond_3

    goto/16 :goto_1e

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_3
    if-ge v7, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    :goto_4
    iget v11, v0, Lg/afu;->d:I

    add-int/2addr v11, v10

    iget v10, v4, Lg/dbr;->f:I

    if-lt v11, v10, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, v4, Lg/dbr;->ej:[Lg/brh;

    aget-object v10, v10, v11

    if-eqz v10, :cond_8

    iget v10, v10, Lg/brh;->aq:I

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    iget v7, v0, Lg/afu;->h:I

    if-nez v7, :cond_24

    iget-object v7, v0, Lg/afu;->m:Lg/brh;

    iget v11, v4, Lg/dbr;->q:I

    iput v11, v7, Lg/brh;->bw:I

    iget-object v11, v7, Lg/brh;->as:Lg/hac;

    iget-object v12, v7, Lg/brh;->bx:Lg/hac;

    iget v13, v0, Lg/afu;->l:I

    if-lez p2, :cond_a

    iget v14, v4, Lg/dbr;->w:I

    add-int/2addr v13, v14

    :cond_a
    iget-object v14, v0, Lg/afu;->g:Lg/hac;

    invoke-virtual {v12, v14, v13}, Lg/hac;->o(Lg/hac;I)V

    if-eqz p3, :cond_b

    iget-object v13, v0, Lg/afu;->q:Lg/hac;

    iget v14, v0, Lg/afu;->b:I

    invoke-virtual {v11, v13, v14}, Lg/hac;->o(Lg/hac;I)V

    :cond_b
    if-lez p2, :cond_c

    iget-object v13, v0, Lg/afu;->g:Lg/hac;

    iget-object v13, v13, Lg/hac;->b:Lg/brh;

    iget-object v13, v13, Lg/brh;->as:Lg/hac;

    invoke-virtual {v13, v12, v2}, Lg/hac;->o(Lg/hac;I)V

    :cond_c
    iget v13, v4, Lg/dbr;->l:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lg/brh;->cx:Z

    if-nez v13, :cond_10

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v15, v1, -0x1

    sub-int/2addr v15, v13

    goto :goto_7

    :cond_d
    move v15, v13

    :goto_7
    iget v10, v0, Lg/afu;->d:I

    add-int/2addr v10, v15

    iget v15, v4, Lg/dbr;->f:I

    if-lt v10, v15, :cond_e

    goto :goto_8

    :cond_e
    iget-object v15, v4, Lg/dbr;->ej:[Lg/brh;

    aget-object v10, v15, v10

    iget-boolean v15, v10, Lg/brh;->cx:Z

    if-eqz v15, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v10, v7

    :goto_9
    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v1, :cond_3c

    if-eqz p1, :cond_11

    add-int/lit8 v16, v1, -0x1

    sub-int v16, v16, v15

    :goto_b
    const/16 v17, 0x1

    goto :goto_c

    :cond_11
    move/from16 v16, v15

    goto :goto_b

    :goto_c
    iget v3, v0, Lg/afu;->d:I

    add-int v3, v3, v16

    iget v14, v4, Lg/dbr;->f:I

    if-lt v3, v14, :cond_12

    goto/16 :goto_1e

    :cond_12
    iget-object v14, v4, Lg/dbr;->ej:[Lg/brh;

    aget-object v3, v14, v3

    if-nez v3, :cond_13

    move/from16 v20, v1

    move/from16 v18, v5

    move/from16 v19, v9

    const/4 v5, 0x3

    goto/16 :goto_14

    :cond_13
    iget-object v14, v3, Lg/brh;->as:Lg/hac;

    iget-object v2, v3, Lg/brh;->bx:Lg/hac;

    iget-object v6, v3, Lg/brh;->cw:Lg/hac;

    move/from16 v18, v5

    if-nez v15, :cond_14

    iget-object v5, v0, Lg/afu;->e:Lg/hac;

    move/from16 v19, v9

    iget v9, v0, Lg/afu;->a:I

    invoke-virtual {v3, v6, v5, v9}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    goto :goto_d

    :cond_14
    move/from16 v19, v9

    :goto_d
    if-nez v16, :cond_1b

    iget v5, v4, Lg/dbr;->ek:I

    if-eqz p1, :cond_15

    const/high16 v16, 0x3f800000    # 1.0f

    iget v9, v4, Lg/dbr;->p:F

    sub-float v9, v16, v9

    :goto_e
    move/from16 v20, v5

    goto :goto_f

    :cond_15
    const/high16 v16, 0x3f800000    # 1.0f

    iget v9, v4, Lg/dbr;->p:F

    goto :goto_e

    :goto_f
    iget v5, v0, Lg/afu;->d:I

    if-nez v5, :cond_17

    iget v5, v4, Lg/dbr;->z:I

    move/from16 v21, v9

    const/4 v9, -0x1

    if-eq v5, v9, :cond_18

    if-eqz p1, :cond_16

    iget v9, v4, Lg/dbr;->d:F

    :goto_10
    sub-float v9, v16, v9

    goto :goto_11

    :cond_16
    iget v9, v4, Lg/dbr;->d:F

    goto :goto_11

    :cond_17
    move/from16 v21, v9

    :cond_18
    if-eqz p3, :cond_1a

    iget v5, v4, Lg/dbr;->y:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1a

    if-eqz p1, :cond_19

    iget v9, v4, Lg/dbr;->b:F

    goto :goto_10

    :cond_19
    iget v9, v4, Lg/dbr;->b:F

    goto :goto_11

    :cond_1a
    move/from16 v5, v20

    move/from16 v9, v21

    :goto_11
    iput v5, v3, Lg/brh;->cs:I

    iput v9, v3, Lg/brh;->cp:F

    :cond_1b
    add-int/lit8 v5, v1, -0x1

    if-ne v15, v5, :cond_1c

    iget-object v5, v3, Lg/brh;->br:Lg/hac;

    iget-object v9, v0, Lg/afu;->i:Lg/hac;

    move/from16 v20, v1

    iget v1, v0, Lg/afu;->n:I

    invoke-virtual {v3, v5, v9, v1}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    goto :goto_12

    :cond_1c
    move/from16 v20, v1

    :goto_12
    if-eqz v13, :cond_1e

    iget-object v1, v13, Lg/brh;->br:Lg/hac;

    iget v5, v4, Lg/dbr;->ab:I

    invoke-virtual {v6, v1, v5}, Lg/hac;->o(Lg/hac;I)V

    if-ne v15, v8, :cond_1d

    iget v5, v0, Lg/afu;->a:I

    invoke-virtual {v6}, Lg/hac;->j()Z

    move-result v9

    if-eqz v9, :cond_1d

    iput v5, v6, Lg/hac;->a:I

    :cond_1d
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5}, Lg/hac;->o(Lg/hac;I)V

    add-int/lit8 v9, v19, 0x1

    if-ne v15, v9, :cond_1e

    iget v5, v0, Lg/afu;->n:I

    invoke-virtual {v1}, Lg/hac;->j()Z

    move-result v6

    if-eqz v6, :cond_1e

    iput v5, v1, Lg/hac;->a:I

    :cond_1e
    if-eq v3, v7, :cond_23

    iget v1, v4, Lg/dbr;->l:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1f

    iget-boolean v6, v10, Lg/brh;->cx:Z

    if-eqz v6, :cond_1f

    if-eq v3, v10, :cond_1f

    iget-boolean v6, v3, Lg/brh;->cx:Z

    if-eqz v6, :cond_1f

    iget-object v1, v3, Lg/brh;->bp:Lg/hac;

    iget-object v2, v10, Lg/brh;->bp:Lg/hac;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_13

    :cond_1f
    if-eqz v1, :cond_22

    const/4 v6, 0x1

    if-eq v1, v6, :cond_21

    if-eqz v18, :cond_20

    iget-object v1, v0, Lg/afu;->g:Lg/hac;

    iget v6, v0, Lg/afu;->l:I

    invoke-virtual {v2, v1, v6}, Lg/hac;->o(Lg/hac;I)V

    iget-object v1, v0, Lg/afu;->q:Lg/hac;

    iget v2, v0, Lg/afu;->b:I

    invoke-virtual {v14, v1, v2}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_13

    :cond_20
    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {v14, v11, v6}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    invoke-virtual {v14, v11, v6}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_13

    :cond_23
    const/4 v5, 0x3

    :goto_13
    move-object v13, v3

    :goto_14
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v18

    move/from16 v9, v19

    move/from16 v1, v20

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v14, 0x3

    goto/16 :goto_a

    :cond_24
    move/from16 v20, v1

    move/from16 v18, v5

    move/from16 v19, v9

    iget-object v1, v0, Lg/afu;->m:Lg/brh;

    iget v2, v4, Lg/dbr;->ek:I

    iput v2, v1, Lg/brh;->cs:I

    iget-object v2, v1, Lg/brh;->cw:Lg/hac;

    iget-object v3, v1, Lg/brh;->br:Lg/hac;

    iget v5, v0, Lg/afu;->a:I

    if-lez p2, :cond_25

    iget v6, v4, Lg/dbr;->ab:I

    add-int/2addr v5, v6

    :cond_25
    if-eqz p1, :cond_27

    iget-object v6, v0, Lg/afu;->i:Lg/hac;

    invoke-virtual {v3, v6, v5}, Lg/hac;->o(Lg/hac;I)V

    if-eqz p3, :cond_26

    iget-object v5, v0, Lg/afu;->e:Lg/hac;

    iget v6, v0, Lg/afu;->n:I

    invoke-virtual {v2, v5, v6}, Lg/hac;->o(Lg/hac;I)V

    :cond_26
    if-lez p2, :cond_29

    iget-object v5, v0, Lg/afu;->i:Lg/hac;

    iget-object v5, v5, Lg/hac;->b:Lg/brh;

    iget-object v5, v5, Lg/brh;->cw:Lg/hac;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_15

    :cond_27
    iget-object v6, v0, Lg/afu;->e:Lg/hac;

    invoke-virtual {v2, v6, v5}, Lg/hac;->o(Lg/hac;I)V

    if-eqz p3, :cond_28

    iget-object v5, v0, Lg/afu;->i:Lg/hac;

    iget v6, v0, Lg/afu;->n:I

    invoke-virtual {v3, v5, v6}, Lg/hac;->o(Lg/hac;I)V

    :cond_28
    if-lez p2, :cond_29

    iget-object v5, v0, Lg/afu;->e:Lg/hac;

    iget-object v5, v5, Lg/hac;->b:Lg/brh;

    iget-object v5, v5, Lg/brh;->br:Lg/hac;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lg/hac;->o(Lg/hac;I)V

    :cond_29
    :goto_15
    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_16
    move/from16 v6, v20

    if-ge v5, v6, :cond_3c

    iget v7, v0, Lg/afu;->d:I

    add-int/2addr v7, v5

    iget v9, v4, Lg/dbr;->f:I

    if-lt v7, v9, :cond_2a

    goto/16 :goto_1e

    :cond_2a
    iget-object v9, v4, Lg/dbr;->ej:[Lg/brh;

    aget-object v7, v9, v7

    if-nez v7, :cond_2b

    move/from16 v20, v6

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1d

    :cond_2b
    iget-object v9, v7, Lg/brh;->bx:Lg/hac;

    iget-object v11, v7, Lg/brh;->br:Lg/hac;

    iget-object v12, v7, Lg/brh;->cw:Lg/hac;

    if-nez v5, :cond_2f

    iget-object v13, v0, Lg/afu;->g:Lg/hac;

    iget v14, v0, Lg/afu;->l:I

    invoke-virtual {v7, v9, v13, v14}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    iget v13, v4, Lg/dbr;->q:I

    iget v14, v4, Lg/dbr;->a:F

    iget v15, v0, Lg/afu;->d:I

    if-nez v15, :cond_2c

    iget v15, v4, Lg/dbr;->ah:I

    move/from16 v20, v6

    const/4 v6, -0x1

    if-eq v15, v6, :cond_2d

    iget v14, v4, Lg/dbr;->v:F

    :goto_17
    move v13, v15

    goto :goto_18

    :cond_2c
    move/from16 v20, v6

    const/4 v6, -0x1

    :cond_2d
    if-eqz p3, :cond_2e

    iget v15, v4, Lg/dbr;->ep:I

    if-eq v15, v6, :cond_2e

    iget v14, v4, Lg/dbr;->c:F

    goto :goto_17

    :cond_2e
    :goto_18
    iput v13, v7, Lg/brh;->bw:I

    iput v14, v7, Lg/brh;->ct:F

    goto :goto_19

    :cond_2f
    move/from16 v20, v6

    const/4 v6, -0x1

    :goto_19
    add-int/lit8 v13, v20, -0x1

    if-ne v5, v13, :cond_30

    iget-object v13, v7, Lg/brh;->as:Lg/hac;

    iget-object v14, v0, Lg/afu;->q:Lg/hac;

    iget v15, v0, Lg/afu;->b:I

    invoke-virtual {v7, v13, v14, v15}, Lg/brh;->dw(Lg/hac;Lg/hac;I)V

    :cond_30
    if-eqz v10, :cond_32

    iget-object v10, v10, Lg/brh;->as:Lg/hac;

    iget v13, v4, Lg/dbr;->w:I

    invoke-virtual {v9, v10, v13}, Lg/hac;->o(Lg/hac;I)V

    if-ne v5, v8, :cond_31

    iget v13, v0, Lg/afu;->l:I

    invoke-virtual {v9}, Lg/hac;->j()Z

    move-result v14

    if-eqz v14, :cond_31

    iput v13, v9, Lg/hac;->a:I

    :cond_31
    const/4 v13, 0x0

    invoke-virtual {v10, v9, v13}, Lg/hac;->o(Lg/hac;I)V

    const/16 v17, 0x1

    add-int/lit8 v9, v19, 0x1

    if-ne v5, v9, :cond_32

    iget v9, v0, Lg/afu;->b:I

    invoke-virtual {v10}, Lg/hac;->j()Z

    move-result v13

    if-eqz v13, :cond_32

    iput v9, v10, Lg/hac;->a:I

    :cond_32
    if-eq v7, v1, :cond_36

    const/4 v9, 0x2

    if-eqz p1, :cond_37

    iget v10, v4, Lg/dbr;->ac:I

    if-eqz v10, :cond_35

    const/4 v13, 0x1

    if-eq v10, v13, :cond_34

    if-eq v10, v9, :cond_33

    goto :goto_1a

    :cond_33
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {v11, v3, v13}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_1a

    :cond_34
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_1a

    :cond_35
    const/4 v13, 0x0

    invoke-virtual {v11, v3, v13}, Lg/hac;->o(Lg/hac;I)V

    :cond_36
    :goto_1a
    const/4 v9, 0x0

    const/4 v13, 0x1

    goto :goto_1c

    :cond_37
    iget v10, v4, Lg/dbr;->ac:I

    if-eqz v10, :cond_3b

    const/4 v13, 0x1

    if-eq v10, v13, :cond_3a

    if-eq v10, v9, :cond_38

    :goto_1b
    const/4 v9, 0x0

    goto :goto_1c

    :cond_38
    if-eqz v18, :cond_39

    iget-object v9, v0, Lg/afu;->e:Lg/hac;

    iget v10, v0, Lg/afu;->a:I

    invoke-virtual {v12, v9, v10}, Lg/hac;->o(Lg/hac;I)V

    iget-object v9, v0, Lg/afu;->i:Lg/hac;

    iget v10, v0, Lg/afu;->n:I

    invoke-virtual {v11, v9, v10}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_1b

    :cond_39
    const/4 v9, 0x0

    invoke-virtual {v12, v2, v9}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {v11, v3, v9}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_1c

    :cond_3a
    const/4 v9, 0x0

    invoke-virtual {v11, v3, v9}, Lg/hac;->o(Lg/hac;I)V

    goto :goto_1c

    :cond_3b
    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-virtual {v12, v2, v9}, Lg/hac;->o(Lg/hac;I)V

    :goto_1c
    move-object v10, v7

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_16

    :cond_3c
    :goto_1e
    return-void
.end method

.method public final x()I
    .locals 2

    iget v0, p0, Lg/afu;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/afu;->k:I

    iget-object v1, p0, Lg/afu;->r:Lg/dbr;

    iget v1, v1, Lg/dbr;->w:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lg/afu;->k:I

    return v0
.end method
