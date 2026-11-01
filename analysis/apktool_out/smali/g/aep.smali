.class public final Lg/aep;
.super Lg/brh;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public aa:Ljava/lang/ref/WeakReference;

.field public ab:Z

.field public final b:Lg/dzh;

.field public final c:Lg/dcu;

.field public d:[Lg/arf;

.field public f:I

.field public h:Ljava/lang/ref/WeakReference;

.field public l:Z

.field public n:I

.field public o:I

.field public p:[Lg/arf;

.field public q:Ljava/lang/ref/WeakReference;

.field public r:Z

.field public final s:Lg/bwo;

.field public t:Ljava/lang/ref/WeakReference;

.field public u:I

.field public final v:Lg/ar;

.field public w:I

.field public x:Ljava/util/ArrayList;

.field public y:Lg/gri;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lg/brh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/aep;->x:Ljava/util/ArrayList;

    new-instance v0, Lg/dzh;

    invoke-direct {v0, p0}, Lg/dzh;-><init>(Lg/aep;)V

    iput-object v0, p0, Lg/aep;->b:Lg/dzh;

    new-instance v0, Lg/ar;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/ar;->f:Z

    iput-boolean v1, v0, Lg/ar;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg/ar;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lg/ar;->e:Lg/gri;

    new-instance v2, Lg/dcu;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lg/ar;->h:Lg/dcu;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/ar;->a:Ljava/util/ArrayList;

    iput-object p0, v0, Lg/ar;->d:Lg/aep;

    iput-object p0, v0, Lg/ar;->b:Lg/aep;

    iput-object v0, p0, Lg/aep;->v:Lg/ar;

    iput-object v1, p0, Lg/aep;->y:Lg/gri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/aep;->ab:Z

    new-instance v2, Lg/bwo;

    invoke-direct {v2}, Lg/bwo;-><init>()V

    iput-object v2, p0, Lg/aep;->s:Lg/bwo;

    iput v0, p0, Lg/aep;->u:I

    iput v0, p0, Lg/aep;->n:I

    const/4 v2, 0x4

    new-array v3, v2, [Lg/arf;

    iput-object v3, p0, Lg/aep;->d:[Lg/arf;

    new-array v2, v2, [Lg/arf;

    iput-object v2, p0, Lg/aep;->p:[Lg/arf;

    const/16 v2, 0x101

    iput v2, p0, Lg/aep;->w:I

    iput-boolean v0, p0, Lg/aep;->l:Z

    iput-boolean v0, p0, Lg/aep;->r:Z

    iput-object v1, p0, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/aep;->a:Ljava/util/HashSet;

    new-instance v0, Lg/dcu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/aep;->c:Lg/dcu;

    return-void
.end method

.method public static ac(Lg/brh;Lg/gri;Lg/dcu;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lg/brh;->aq:I

    iget-object v1, p0, Lg/brh;->cm:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_13

    instance-of v0, p0, Lg/aar;

    if-nez v0, :cond_13

    instance-of v0, p0, Lg/r;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    aget-object v2, v0, v3

    iput-object v2, p2, Lg/dcu;->d:Lg/fol;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p2, Lg/dcu;->g:Lg/fol;

    invoke-virtual {p0}, Lg/brh;->eb()I

    move-result v0

    iput v0, p2, Lg/dcu;->i:I

    invoke-virtual {p0}, Lg/brh;->di()I

    move-result v0

    iput v0, p2, Lg/dcu;->b:I

    iput-boolean v3, p2, Lg/dcu;->f:Z

    iput v3, p2, Lg/dcu;->h:I

    iget-object v0, p2, Lg/dcu;->d:Lg/fol;

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p2, Lg/dcu;->g:Lg/fol;

    if-ne v5, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget v6, p0, Lg/brh;->bq:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v4, :cond_5

    iget v7, p0, Lg/brh;->bq:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lg/brh;->ec(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lg/brh;->da:I

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    sget-object v0, Lg/fol;->WRAP_CONTENT:Lg/fol;

    iput-object v0, p2, Lg/dcu;->d:Lg/fol;

    if-eqz v4, :cond_6

    iget v0, p0, Lg/brh;->by:I

    if-nez v0, :cond_6

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    iput-object v0, p2, Lg/dcu;->d:Lg/fol;

    :cond_6
    const/4 v0, 0x0

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {p0, v2}, Lg/brh;->ec(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lg/brh;->by:I

    if-nez v7, :cond_9

    if-nez v5, :cond_9

    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    iput-object v4, p2, Lg/dcu;->g:Lg/fol;

    if-eqz v0, :cond_8

    iget v4, p0, Lg/brh;->da:I

    if-nez v4, :cond_8

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    iput-object v4, p2, Lg/dcu;->g:Lg/fol;

    :cond_8
    const/4 v4, 0x0

    :cond_9
    invoke-virtual {p0}, Lg/brh;->i()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    iput-object v0, p2, Lg/dcu;->d:Lg/fol;

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0}, Lg/brh;->e()Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    iput-object v4, p2, Lg/dcu;->g:Lg/fol;

    const/4 v4, 0x0

    :cond_b
    const/4 v7, 0x4

    if-eqz v6, :cond_e

    aget v6, v1, v3

    if-ne v6, v7, :cond_c

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    iput-object v4, p2, Lg/dcu;->d:Lg/fol;

    goto :goto_5

    :cond_c
    if-nez v4, :cond_e

    iget-object v4, p2, Lg/dcu;->g:Lg/fol;

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-ne v4, v6, :cond_d

    iget v4, p2, Lg/dcu;->b:I

    goto :goto_4

    :cond_d
    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    iput-object v4, p2, Lg/dcu;->d:Lg/fol;

    invoke-virtual {p1, p0, p2}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget v4, p2, Lg/dcu;->e:I

    :goto_4
    iput-object v6, p2, Lg/dcu;->d:Lg/fol;

    iget v6, p0, Lg/brh;->bq:F

    int-to-float v4, v4

    mul-float v6, v6, v4

    float-to-int v4, v6

    iput v4, p2, Lg/dcu;->i:I

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    aget v1, v1, v2

    if-ne v1, v7, :cond_f

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    iput-object v0, p2, Lg/dcu;->g:Lg/fol;

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget-object v0, p2, Lg/dcu;->d:Lg/fol;

    sget-object v1, Lg/fol;->FIXED:Lg/fol;

    if-ne v0, v1, :cond_10

    iget v0, p2, Lg/dcu;->i:I

    goto :goto_6

    :cond_10
    sget-object v0, Lg/fol;->WRAP_CONTENT:Lg/fol;

    iput-object v0, p2, Lg/dcu;->g:Lg/fol;

    invoke-virtual {p1, p0, p2}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget v0, p2, Lg/dcu;->c:I

    :goto_6
    iput-object v1, p2, Lg/dcu;->g:Lg/fol;

    iget v1, p0, Lg/brh;->db:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    int-to-float v0, v0

    iget v1, p0, Lg/brh;->bq:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lg/dcu;->b:I

    goto :goto_7

    :cond_11
    iget v1, p0, Lg/brh;->bq:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p2, Lg/dcu;->b:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget p1, p2, Lg/dcu;->c:I

    invoke-virtual {p0, p1}, Lg/brh;->ed(I)V

    iget p1, p2, Lg/dcu;->e:I

    invoke-virtual {p0, p1}, Lg/brh;->dj(I)V

    iget-boolean p1, p2, Lg/dcu;->a:Z

    iput-boolean p1, p0, Lg/brh;->cx:Z

    iget p1, p2, Lg/dcu;->j:I

    invoke-virtual {p0, p1}, Lg/brh;->ee(I)V

    iput v3, p2, Lg/dcu;->h:I

    return-void

    :cond_13
    :goto_8
    iput v3, p2, Lg/dcu;->c:I

    iput v3, p2, Lg/dcu;->e:I

    return-void
.end method


# virtual methods
.method public final ad(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/brh;->cj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/brh;->bc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lg/brh;->bt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/brh;

    invoke-virtual {v1, p1}, Lg/brh;->ad(Ljava/lang/StringBuilder;)V

    const-string v1, ",\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final ae()V
    .locals 32

    move-object/from16 v1, p0

    sget-object v2, Lg/bff;->b:[Z

    const/4 v3, 0x0

    iput v3, v1, Lg/brh;->cv:I

    iput v3, v1, Lg/brh;->cb:I

    iput-boolean v3, v1, Lg/aep;->l:Z

    iput-boolean v3, v1, Lg/aep;->r:Z

    iget-object v0, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v1, Lg/brh;->ch:[Lg/fol;

    const/4 v7, 0x1

    aget-object v8, v6, v7

    aget-object v9, v6, v3

    iget v10, v1, Lg/aep;->f:I

    iget-object v11, v1, Lg/brh;->bx:Lg/hac;

    iget-object v12, v1, Lg/brh;->cw:Lg/hac;

    if-nez v10, :cond_1e

    iget v10, v1, Lg/aep;->w:I

    invoke-static {v10, v7}, Lg/bff;->x(II)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, v1, Lg/aep;->y:Lg/gri;

    aget-object v14, v6, v3

    aget-object v15, v6, v7

    invoke-virtual {v1}, Lg/brh;->ef()V

    iget-object v13, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_0
    if-ge v3, v7, :cond_0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lg/brh;

    invoke-virtual/range {v18 .. v18}, Lg/brh;->ef()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Lg/aep;->ab:Z

    move-object/from16 v18, v2

    sget-object v2, Lg/fol;->FIXED:Lg/fol;

    if-ne v14, v2, :cond_1

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v2}, Lg/brh;->dx(II)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lg/hac;->m(I)V

    iput v14, v1, Lg/brh;->cv:I

    :goto_1
    const/4 v2, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v14, v7, :cond_7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Lg/brh;

    move-object/from16 v21, v6

    instance-of v6, v2, Lg/aar;

    if-eqz v6, :cond_6

    check-cast v2, Lg/aar;

    iget v6, v2, Lg/aar;->f:I

    move/from16 v23, v14

    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    iget v6, v2, Lg/aar;->a:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_2

    invoke-virtual {v2, v6}, Lg/aar;->l(I)V

    goto :goto_3

    :cond_2
    iget v6, v2, Lg/aar;->c:I

    if-eq v6, v14, :cond_3

    invoke-virtual {v1}, Lg/brh;->i()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v6

    iget v14, v2, Lg/aar;->c:I

    sub-int/2addr v6, v14

    invoke-virtual {v2, v6}, Lg/aar;->l(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lg/brh;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v2, Lg/aar;->d:F

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v14

    int-to-float v14, v14

    mul-float v6, v6, v14

    add-float v6, v6, v20

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Lg/aar;->l(I)V

    :cond_4
    :goto_3
    const/16 v22, 0x1

    :cond_5
    move/from16 v2, v22

    goto :goto_4

    :cond_6
    move/from16 v23, v14

    instance-of v6, v2, Lg/r;

    if-eqz v6, :cond_5

    check-cast v2, Lg/r;

    invoke-virtual {v2}, Lg/r;->f()I

    move-result v2

    if-nez v2, :cond_5

    move/from16 v2, v22

    const/16 v19, 0x1

    :goto_4
    add-int/lit8 v14, v23, 0x1

    move-object/from16 v6, v21

    goto :goto_2

    :cond_7
    move/from16 v22, v2

    move-object/from16 v21, v6

    if-eqz v22, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_a

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v14, v6, Lg/aar;

    if-eqz v14, :cond_9

    check-cast v6, Lg/aar;

    iget v14, v6, Lg/aar;->f:I

    move/from16 v22, v2

    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    const/4 v14, 0x0

    invoke-static {v14, v10, v6, v3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    move/from16 v22, v2

    goto :goto_6

    :goto_7
    add-int/lit8 v2, v22, 0x1

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    invoke-static {v14, v10, v1, v3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    if-eqz v19, :cond_c

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v7, :cond_c

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v14, v6, Lg/r;

    if-eqz v14, :cond_b

    check-cast v6, Lg/r;

    invoke-virtual {v6}, Lg/r;->f()I

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v6}, Lg/r;->h()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    invoke-static {v14, v10, v6, v3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    sget-object v2, Lg/fol;->FIXED:Lg/fol;

    if-ne v15, v2, :cond_d

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v2}, Lg/brh;->dt(II)V

    goto :goto_9

    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lg/hac;->m(I)V

    iput v14, v1, Lg/brh;->cb:I

    :goto_9
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v2, v7, :cond_13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/brh;

    move/from16 v19, v2

    instance-of v2, v15, Lg/aar;

    if-eqz v2, :cond_11

    check-cast v15, Lg/aar;

    iget v2, v15, Lg/aar;->f:I

    if-nez v2, :cond_12

    iget v2, v15, Lg/aar;->a:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_e

    invoke-virtual {v15, v2}, Lg/aar;->l(I)V

    goto :goto_b

    :cond_e
    iget v2, v15, Lg/aar;->c:I

    if-eq v2, v6, :cond_f

    invoke-virtual {v1}, Lg/brh;->e()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v2

    iget v6, v15, Lg/aar;->c:I

    sub-int/2addr v2, v6

    invoke-virtual {v15, v2}, Lg/aar;->l(I)V

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Lg/brh;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v15, Lg/aar;->d:F

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v15, v2}, Lg/aar;->l(I)V

    :cond_10
    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_11
    instance-of v2, v15, Lg/r;

    if-eqz v2, :cond_12

    check-cast v15, Lg/r;

    invoke-virtual {v15}, Lg/r;->f()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_12

    const/4 v14, 0x1

    :cond_12
    :goto_c
    add-int/lit8 v2, v19, 0x1

    goto :goto_a

    :cond_13
    if-eqz v6, :cond_15

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v7, :cond_15

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v15, v6, Lg/aar;

    if-eqz v15, :cond_14

    check-cast v6, Lg/aar;

    iget v15, v6, Lg/aar;->f:I

    if-nez v15, :cond_14

    const/4 v15, 0x1

    invoke-static {v15, v10, v6}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2, v10, v1}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    if-eqz v14, :cond_17

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v7, :cond_17

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v14, v6, Lg/r;

    if-eqz v14, :cond_16

    check-cast v6, Lg/r;

    invoke-virtual {v6}, Lg/r;->f()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    invoke-virtual {v6}, Lg/r;->h()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {v15, v10, v6}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v7, :cond_1b

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    invoke-virtual {v6}, Lg/brh;->dg()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-static {v6}, Lg/ffb;->ax(Lg/brh;)Z

    move-result v14

    if-eqz v14, :cond_1a

    sget-object v14, Lg/ffb;->k:Lg/dcu;

    invoke-static {v6, v10, v14}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    instance-of v14, v6, Lg/aar;

    if-eqz v14, :cond_19

    move-object v14, v6

    check-cast v14, Lg/aar;

    iget v14, v14, Lg/aar;->f:I

    if-nez v14, :cond_18

    const/4 v14, 0x0

    invoke-static {v14, v10, v6}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    goto :goto_10

    :cond_18
    const/4 v14, 0x0

    invoke-static {v14, v10, v6, v3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    goto :goto_10

    :cond_19
    const/4 v14, 0x0

    invoke-static {v14, v10, v6, v3}, Lg/ffb;->bk(ILg/gri;Lg/brh;Z)V

    invoke-static {v14, v10, v6}, Lg/ffb;->bt(ILg/gri;Lg/brh;)V

    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v4, :cond_1f

    iget-object v3, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    invoke-virtual {v3}, Lg/brh;->dg()Z

    move-result v6

    if-eqz v6, :cond_1d

    instance-of v6, v3, Lg/aar;

    if-nez v6, :cond_1d

    instance-of v6, v3, Lg/r;

    if-nez v6, :cond_1d

    instance-of v6, v3, Lg/dbr;

    if-nez v6, :cond_1d

    iget-boolean v6, v3, Lg/brh;->cn:Z

    if-nez v6, :cond_1d

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v6

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v7

    sget-object v10, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v6, v10, :cond_1c

    iget v6, v3, Lg/brh;->da:I

    if-eq v6, v15, :cond_1c

    if-ne v7, v10, :cond_1c

    iget v6, v3, Lg/brh;->by:I

    if-eq v6, v15, :cond_1c

    goto :goto_12

    :cond_1c
    new-instance v6, Lg/dcu;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v1, Lg/aep;->y:Lg/gri;

    invoke-static {v3, v7, v6}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_1d
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    move-object/from16 v18, v2

    move-object/from16 v21, v6

    :cond_1f
    const/4 v2, 0x2

    iget-object v6, v1, Lg/aep;->s:Lg/bwo;

    if-le v4, v2, :cond_20

    sget-object v7, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v9, v7, :cond_21

    if-ne v8, v7, :cond_20

    goto :goto_13

    :cond_20
    move-object/from16 v24, v12

    goto/16 :goto_3c

    :cond_21
    :goto_13
    iget v7, v1, Lg/aep;->w:I

    const/16 v10, 0x400

    invoke-static {v7, v10}, Lg/bff;->x(II)Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v7, v1, Lg/aep;->y:Lg/gri;

    iget-object v10, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v13, :cond_24

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/brh;

    const/16 v17, 0x0

    aget-object v2, v21, v17

    const/16 v16, 0x1

    aget-object v3, v21, v16

    move/from16 v22, v14

    iget-object v14, v15, Lg/brh;->ch:[Lg/fol;

    move-object/from16 v23, v14

    aget-object v14, v23, v17

    move-object/from16 v24, v12

    aget-object v12, v23, v16

    invoke-static {v2, v3, v14, v12}, Lg/dzm;->ba(Lg/fol;Lg/fol;Lg/fol;Lg/fol;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_3c

    :cond_22
    instance-of v2, v15, Lg/dbr;

    if-eqz v2, :cond_23

    goto/16 :goto_3c

    :cond_23
    add-int/lit8 v14, v22, 0x1

    move-object/from16 v12, v24

    const/4 v2, 0x2

    goto :goto_14

    :cond_24
    move-object/from16 v24, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_15
    if-ge v2, v13, :cond_37

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v2

    move-object/from16 v2, v25

    check-cast v2, Lg/brh;

    move-object/from16 v25, v3

    const/16 v17, 0x0

    aget-object v3, v21, v17

    move-object/from16 v27, v12

    const/16 v16, 0x1

    aget-object v12, v21, v16

    move-object/from16 v28, v14

    iget-object v14, v2, Lg/brh;->ch:[Lg/fol;

    move-object/from16 v29, v14

    aget-object v14, v29, v17

    move-object/from16 v30, v15

    aget-object v15, v29, v16

    invoke-static {v3, v12, v14, v15}, Lg/dzm;->ba(Lg/fol;Lg/fol;Lg/fol;Lg/fol;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v1, Lg/aep;->c:Lg/dcu;

    invoke-static {v2, v7, v3}, Lg/aep;->ac(Lg/brh;Lg/gri;Lg/dcu;)V

    :cond_25
    instance-of v3, v2, Lg/aar;

    if-eqz v3, :cond_2a

    move-object v12, v2

    check-cast v12, Lg/aar;

    iget v14, v12, Lg/aar;->f:I

    if-nez v14, :cond_27

    if-nez v28, :cond_26

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_26
    move-object/from16 v14, v28

    :goto_16
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    move-object/from16 v14, v28

    :goto_17
    iget v15, v12, Lg/aar;->f:I

    move/from16 v29, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_29

    if-nez v25, :cond_28

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_18

    :cond_28
    move-object/from16 v3, v25

    :goto_18
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    move-object/from16 v3, v25

    goto :goto_19

    :cond_2a
    move/from16 v29, v3

    move-object/from16 v3, v25

    move-object/from16 v14, v28

    :goto_19
    instance-of v12, v2, Lg/gbi;

    if-eqz v12, :cond_32

    instance-of v12, v2, Lg/r;

    if-eqz v12, :cond_2f

    move-object v12, v2

    check-cast v12, Lg/r;

    invoke-virtual {v12}, Lg/r;->f()I

    move-result v15

    if-nez v15, :cond_2c

    if-nez v27, :cond_2b

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_2b
    move-object/from16 v15, v27

    :goto_1a
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    move-object/from16 v25, v3

    goto :goto_1c

    :cond_2c
    move-object/from16 v15, v27

    goto :goto_1b

    :goto_1c
    invoke-virtual {v12}, Lg/r;->f()I

    move-result v3

    move-object/from16 v31, v7

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2e

    if-nez v30, :cond_2d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1d

    :cond_2d
    move-object/from16 v3, v30

    :goto_1d
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v3

    :cond_2e
    move-object v12, v15

    :goto_1e
    move-object/from16 v15, v30

    goto :goto_21

    :cond_2f
    move-object/from16 v25, v3

    move-object/from16 v31, v7

    move-object v3, v2

    check-cast v3, Lg/gbi;

    if-nez v27, :cond_30

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    :cond_30
    move-object/from16 v12, v27

    :goto_1f
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v30, :cond_31

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    :cond_31
    move-object/from16 v15, v30

    :goto_20
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_32
    move-object/from16 v25, v3

    move-object/from16 v31, v7

    move-object/from16 v12, v27

    goto :goto_1e

    :goto_21
    iget-object v3, v2, Lg/brh;->cw:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_34

    iget-object v3, v2, Lg/brh;->br:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_34

    if-nez v29, :cond_34

    instance-of v3, v2, Lg/r;

    if-nez v3, :cond_34

    if-nez v22, :cond_33

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v3

    :cond_34
    iget-object v3, v2, Lg/brh;->bx:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_36

    iget-object v3, v2, Lg/brh;->as:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_36

    iget-object v3, v2, Lg/brh;->bp:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-nez v3, :cond_36

    if-nez v29, :cond_36

    instance-of v3, v2, Lg/r;

    if-nez v3, :cond_36

    if-nez v23, :cond_35

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :cond_35
    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v3

    :cond_36
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v3, v25

    move-object/from16 v7, v31

    goto/16 :goto_15

    :cond_37
    move-object/from16 v25, v3

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v30, v15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v25, :cond_38

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aar;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_22

    :cond_38
    const/4 v12, 0x0

    const/4 v14, 0x0

    if-eqz v27, :cond_39

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gbi;

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    move-result-object v15

    invoke-virtual {v7, v14, v2, v15}, Lg/gbi;->ex(ILjava/util/ArrayList;Lg/ic;)V

    invoke-virtual {v15, v2}, Lg/ic;->g(Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_23

    :cond_39
    sget-object v3, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_24

    :cond_3a
    sget-object v3, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_25

    :cond_3b
    sget-object v3, Lg/dih;->CENTER:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_26

    :cond_3c
    const/4 v12, 0x0

    const/4 v14, 0x0

    if-eqz v22, :cond_3d

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/brh;

    invoke-static {v7, v14, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_27

    :cond_3d
    if-eqz v28, :cond_3e

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aar;

    const/4 v15, 0x1

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_28

    :cond_3e
    const/4 v15, 0x1

    if-eqz v30, :cond_3f

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/gbi;

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    move-result-object v14

    invoke-virtual {v7, v15, v2, v14}, Lg/gbi;->ex(ILjava/util/ArrayList;Lg/ic;)V

    invoke-virtual {v14, v2}, Lg/ic;->g(Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_29

    :cond_3f
    sget-object v3, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_2a

    :cond_40
    sget-object v3, Lg/dih;->BASELINE:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_2b

    :cond_41
    sget-object v3, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_2c

    :cond_42
    sget-object v3, Lg/dih;->CENTER:Lg/dih;

    invoke-virtual {v1, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    iget-object v3, v3, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/hac;

    iget-object v7, v7, Lg/hac;->b:Lg/brh;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_2d

    :cond_43
    const/4 v12, 0x0

    const/4 v15, 0x1

    if-eqz v23, :cond_44

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/brh;

    invoke-static {v7, v15, v2, v12}, Lg/dzm;->ab(Lg/brh;ILjava/util/ArrayList;Lg/ic;)Lg/ic;

    goto :goto_2e

    :cond_44
    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v13, :cond_4b

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/brh;

    iget-object v12, v7, Lg/brh;->ch:[Lg/fol;

    const/16 v17, 0x0

    aget-object v14, v12, v17

    sget-object v15, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v14, v15, :cond_49

    const/16 v16, 0x1

    aget-object v12, v12, v16

    if-ne v12, v15, :cond_49

    iget v12, v7, Lg/brh;->az:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_30
    if-ge v15, v14, :cond_46

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Lg/ic;

    move-object/from16 v22, v10

    iget v10, v3, Lg/ic;->e:I

    if-ne v12, v10, :cond_45

    goto :goto_31

    :cond_45
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v22

    move/from16 v3, v23

    goto :goto_30

    :cond_46
    move/from16 v23, v3

    move-object/from16 v22, v10

    const/4 v3, 0x0

    :goto_31
    iget v7, v7, Lg/brh;->ci:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v10, :cond_48

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/ic;

    iget v15, v14, Lg/ic;->e:I

    if-ne v7, v15, :cond_47

    goto :goto_33

    :cond_47
    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    :cond_48
    const/4 v14, 0x0

    :goto_33
    if-eqz v3, :cond_4a

    if-eqz v14, :cond_4a

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v14}, Lg/ic;->i(ILg/ic;)V

    const/4 v7, 0x2

    iput v7, v14, Lg/ic;->f:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_49
    move/from16 v23, v3

    move-object/from16 v22, v10

    :cond_4a
    :goto_34
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v10, v22

    goto :goto_2f

    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v15, 0x1

    if-gt v3, v15, :cond_4c

    goto/16 :goto_3c

    :cond_4c
    const/16 v17, 0x0

    aget-object v3, v21, v17

    sget-object v7, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v3, v7, :cond_50

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v10, 0x0

    :cond_4d
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/ic;

    iget v13, v12, Lg/ic;->f:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4e

    goto :goto_35

    :cond_4e
    const/4 v14, 0x0

    invoke-virtual {v12, v6, v14}, Lg/ic;->h(Lg/bwo;I)I

    move-result v13

    if-le v13, v7, :cond_4d

    move-object v10, v12

    move v7, v13

    goto :goto_35

    :cond_4f
    if-eqz v10, :cond_50

    sget-object v3, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v1, v3}, Lg/brh;->ds(Lg/fol;)V

    invoke-virtual {v1, v7}, Lg/brh;->ed(I)V

    :goto_36
    const/16 v16, 0x1

    goto :goto_37

    :cond_50
    const/4 v10, 0x0

    goto :goto_36

    :goto_37
    aget-object v3, v21, v16

    sget-object v7, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v3, v7, :cond_54

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :cond_51
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/ic;

    iget v13, v12, Lg/ic;->f:I

    if-nez v13, :cond_52

    goto :goto_38

    :cond_52
    const/4 v15, 0x1

    invoke-virtual {v12, v6, v15}, Lg/ic;->h(Lg/bwo;I)I

    move-result v13

    if-le v13, v3, :cond_51

    move-object v7, v12

    move v3, v13

    goto :goto_38

    :cond_53
    if-eqz v7, :cond_54

    sget-object v2, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v1, v2}, Lg/brh;->dl(Lg/fol;)V

    invoke-virtual {v1, v3}, Lg/brh;->dj(I)V

    goto :goto_39

    :cond_54
    const/4 v7, 0x0

    :goto_39
    if-nez v10, :cond_55

    if-eqz v7, :cond_5a

    :cond_55
    sget-object v2, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v9, v2, :cond_57

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v3

    if-ge v0, v3, :cond_56

    if-lez v0, :cond_56

    invoke-virtual {v1, v0}, Lg/brh;->ed(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lg/aep;->l:Z

    goto :goto_3a

    :cond_56
    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v0

    :cond_57
    :goto_3a
    if-ne v8, v2, :cond_59

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v2

    if-ge v5, v2, :cond_58

    if-lez v5, :cond_58

    invoke-virtual {v1, v5}, Lg/brh;->dj(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lg/aep;->r:Z

    goto :goto_3b

    :cond_58
    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v5

    :cond_59
    :goto_3b
    move v2, v0

    const/4 v0, 0x1

    goto :goto_3d

    :cond_5a
    :goto_3c
    move v2, v0

    const/4 v0, 0x0

    :goto_3d
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lg/aep;->ag(I)Z

    move-result v7

    if-nez v7, :cond_5c

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Lg/aep;->ag(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_3e

    :cond_5b
    const/4 v7, 0x0

    goto :goto_3f

    :cond_5c
    :goto_3e
    const/4 v7, 0x1

    :goto_3f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    iput-boolean v14, v6, Lg/bwo;->b:Z

    iget v10, v1, Lg/aep;->w:I

    if-eqz v10, :cond_5d

    if-eqz v7, :cond_5d

    const/4 v15, 0x1

    iput-boolean v15, v6, Lg/bwo;->b:Z

    goto :goto_40

    :cond_5d
    const/4 v15, 0x1

    :goto_40
    iget-object v7, v1, Lg/aep;->x:Ljava/util/ArrayList;

    aget-object v10, v21, v14

    sget-object v12, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v10, v12, :cond_5f

    aget-object v10, v21, v15

    if-ne v10, v12, :cond_5e

    goto :goto_41

    :cond_5e
    const/4 v10, 0x0

    goto :goto_42

    :cond_5f
    :goto_41
    const/4 v10, 0x1

    :goto_42
    iput v14, v1, Lg/aep;->u:I

    iput v14, v1, Lg/aep;->n:I

    const/4 v12, 0x0

    :goto_43
    if-ge v12, v4, :cond_61

    iget-object v13, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/brh;

    instance-of v14, v13, Lg/aep;

    if-eqz v14, :cond_60

    check-cast v13, Lg/aep;

    invoke-virtual {v13}, Lg/aep;->ae()V

    :cond_60
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_61
    invoke-virtual {v1, v3}, Lg/aep;->ag(I)Z

    move-result v12

    move v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_44
    if-eqz v14, :cond_75

    const/16 v16, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v6}, Lg/bwo;->ah()V

    const/4 v3, 0x0

    iput v3, v1, Lg/aep;->u:I

    iput v3, v1, Lg/aep;->n:I

    invoke-virtual {v1, v6}, Lg/brh;->eh(Lg/bwo;)V

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v4, :cond_62

    iget-object v3, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    invoke-virtual {v3, v6}, Lg/brh;->eh(Lg/bwo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :catch_0
    move-exception v0

    move/from16 v25, v10

    move-object/from16 v26, v11

    const/4 v3, 0x0

    goto/16 :goto_4b

    :cond_62
    invoke-virtual {v1, v6}, Lg/aep;->al(Lg/bwo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hac;

    invoke-virtual {v6, v11}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v14

    iget-object v3, v1, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v3, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v25, v10

    move-object/from16 v26, v11

    const/4 v10, 0x5

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v14, v11, v10}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    const/4 v3, 0x0

    iput-object v3, v1, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    goto :goto_48

    :catch_1
    move-exception v0

    :goto_46
    const/4 v3, 0x0

    :goto_47
    const/4 v14, 0x1

    goto/16 :goto_4b

    :catch_2
    move-exception v0

    move/from16 v25, v10

    move-object/from16 v26, v11

    goto :goto_46

    :cond_63
    move/from16 v25, v10

    move-object/from16 v26, v11

    :goto_48
    iget-object v0, v1, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hac;

    iget-object v3, v1, Lg/brh;->as:Lg/hac;

    invoke-virtual {v6, v3}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v3

    iget-object v10, v1, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v10, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    const/4 v11, 0x5

    const/4 v14, 0x0

    invoke-virtual {v10, v3, v0, v14, v11}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    const/4 v3, 0x0

    iput-object v3, v1, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    :cond_64
    iget-object v0, v1, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hac;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v3, v24

    :try_start_3
    invoke-virtual {v6, v3}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    iget-object v11, v1, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v11, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v24, v3

    const/4 v3, 0x0

    const/4 v14, 0x5

    :try_start_4
    invoke-virtual {v11, v0, v10, v3, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    const/4 v3, 0x0

    iput-object v3, v1, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    goto :goto_49

    :catch_3
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_46

    :cond_65
    :goto_49
    iget-object v0, v1, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hac;

    iget-object v3, v1, Lg/brh;->br:Lg/hac;

    invoke-virtual {v6, v3}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v10, v1, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v10, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v0

    const/4 v11, 0x5

    const/4 v14, 0x0

    invoke-virtual {v10, v3, v0, v14, v11}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v3, 0x0

    :try_start_6
    iput-object v3, v1, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    goto :goto_4a

    :catch_4
    move-exception v0

    goto/16 :goto_47

    :catch_5
    move-exception v0

    goto/16 :goto_46

    :cond_66
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {v6}, Lg/bwo;->ab()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v14, 0x1

    goto :goto_4c

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v3, "EXCEPTION : "

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4c
    if-eqz v14, :cond_6a

    const/16 v17, 0x0

    const/16 v19, 0x2

    aput-boolean v17, v18, v19

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lg/aep;->ag(I)Z

    move-result v0

    invoke-virtual {v1, v6, v0}, Lg/brh;->k(Lg/bwo;Z)V

    iget-object v10, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4d
    if-ge v14, v10, :cond_69

    iget-object v3, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    invoke-virtual {v3, v6, v0}, Lg/brh;->k(Lg/bwo;Z)V

    move/from16 v23, v0

    iget v0, v3, Lg/brh;->ao:I

    move/from16 v27, v10

    const/4 v10, -0x1

    if-ne v0, v10, :cond_67

    iget v0, v3, Lg/brh;->ce:I

    if-eq v0, v10, :cond_68

    :cond_67
    const/4 v11, 0x1

    :cond_68
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v23

    move/from16 v10, v27

    const/16 v3, 0x40

    goto :goto_4d

    :cond_69
    const/4 v10, -0x1

    goto :goto_4f

    :cond_6a
    const/4 v10, -0x1

    invoke-virtual {v1, v6, v12}, Lg/brh;->k(Lg/bwo;Z)V

    const/4 v0, 0x0

    :goto_4e
    if-ge v0, v4, :cond_6b

    iget-object v3, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    invoke-virtual {v3, v6, v12}, Lg/brh;->k(Lg/bwo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_6b
    const/4 v11, 0x0

    :goto_4f
    const/16 v0, 0x8

    if-eqz v25, :cond_6e

    if-ge v15, v0, :cond_6e

    const/16 v19, 0x2

    aget-boolean v3, v18, v19

    if-eqz v3, :cond_6f

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_50
    if-ge v3, v4, :cond_6c

    iget-object v0, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/brh;

    move/from16 v27, v3

    iget v3, v0, Lg/brh;->cv:I

    invoke-virtual {v0}, Lg/brh;->eb()I

    move-result v28

    add-int v3, v28, v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v3, v0, Lg/brh;->cb:I

    invoke-virtual {v0}, Lg/brh;->di()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v3, v27, 0x1

    const/16 v0, 0x8

    goto :goto_50

    :cond_6c
    iget v0, v1, Lg/brh;->bb:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v1, Lg/brh;->au:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v10, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v9, v10, :cond_6d

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v14

    if-ge v14, v0, :cond_6d

    invoke-virtual {v1, v0}, Lg/brh;->ed(I)V

    const/16 v17, 0x0

    aput-object v10, v21, v17

    const/4 v11, 0x1

    const/4 v13, 0x1

    :cond_6d
    if-ne v8, v10, :cond_6f

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v0

    if-ge v0, v3, :cond_6f

    invoke-virtual {v1, v3}, Lg/brh;->dj(I)V

    const/16 v16, 0x1

    aput-object v10, v21, v16

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto :goto_51

    :cond_6e
    const/16 v19, 0x2

    :cond_6f
    :goto_51
    iget v0, v1, Lg/brh;->bb:I

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v3

    if-le v0, v3, :cond_70

    invoke-virtual {v1, v0}, Lg/brh;->ed(I)V

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    const/16 v17, 0x0

    aput-object v0, v21, v17

    const/4 v11, 0x1

    const/4 v13, 0x1

    :cond_70
    iget v0, v1, Lg/brh;->au:I

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v3

    if-le v0, v3, :cond_71

    invoke-virtual {v1, v0}, Lg/brh;->dj(I)V

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    const/4 v14, 0x1

    aput-object v0, v21, v14

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto :goto_52

    :cond_71
    const/4 v14, 0x1

    :goto_52
    if-nez v13, :cond_73

    const/16 v17, 0x0

    aget-object v0, v21, v17

    sget-object v3, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v0, v3, :cond_72

    if-lez v2, :cond_72

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v0

    if-le v0, v2, :cond_72

    iput-boolean v14, v1, Lg/aep;->l:Z

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    aput-object v0, v21, v17

    invoke-virtual {v1, v2}, Lg/brh;->ed(I)V

    const/4 v11, 0x1

    const/4 v13, 0x1

    :cond_72
    aget-object v0, v21, v14

    if-ne v0, v3, :cond_73

    if-lez v5, :cond_73

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v0

    if-le v0, v5, :cond_73

    iput-boolean v14, v1, Lg/aep;->r:Z

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    aput-object v0, v21, v14

    invoke-virtual {v1, v5}, Lg/brh;->dj(I)V

    const/16 v0, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_53

    :cond_73
    move v14, v11

    const/16 v0, 0x8

    :goto_53
    if-le v15, v0, :cond_74

    const/4 v14, 0x0

    :cond_74
    move v0, v15

    move/from16 v10, v25

    move-object/from16 v11, v26

    const/16 v3, 0x40

    goto/16 :goto_44

    :cond_75
    iput-object v7, v1, Lg/aep;->x:Ljava/util/ArrayList;

    if-eqz v13, :cond_76

    const/16 v17, 0x0

    aput-object v9, v21, v17

    const/16 v16, 0x1

    aput-object v8, v21, v16

    :cond_76
    iget-object v0, v6, Lg/bwo;->l:Lg/fpd;

    invoke-virtual {v1, v0}, Lg/aep;->ak(Lg/fpd;)V

    return-void
.end method

.method public final af()V
    .locals 1

    iget-object v0, p0, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v0}, Lg/bwo;->ah()V

    const/4 v0, 0x0

    iput v0, p0, Lg/aep;->z:I

    iput v0, p0, Lg/aep;->o:I

    iget-object v0, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lg/brh;->af()V

    return-void
.end method

.method public final ag(I)Z
    .locals 1

    iget v0, p0, Lg/aep;->w:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ah(Lg/brh;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lg/aep;->u:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lg/aep;->p:[Lg/arf;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lg/arf;

    iput-object p2, p0, Lg/aep;->p:[Lg/arf;

    :cond_0
    iget-object p2, p0, Lg/aep;->p:[Lg/arf;

    iget v1, p0, Lg/aep;->u:I

    new-instance v2, Lg/arf;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lg/aep;->ab:Z

    invoke-direct {v2, p1, v3, v4}, Lg/arf;-><init>(Lg/brh;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/aep;->u:I

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Lg/aep;->n:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lg/aep;->d:[Lg/arf;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lg/arf;

    iput-object p2, p0, Lg/aep;->d:[Lg/arf;

    :cond_2
    iget-object p2, p0, Lg/aep;->d:[Lg/arf;

    iget v1, p0, Lg/aep;->n:I

    new-instance v2, Lg/arf;

    iget-boolean v3, p0, Lg/aep;->ab:Z

    invoke-direct {v2, p1, v0, v3}, Lg/arf;-><init>(Lg/brh;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lg/aep;->n:I

    :cond_3
    return-void
.end method

.method public final ai(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lg/brh;->ai(ZZ)V

    iget-object v0, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/brh;

    invoke-virtual {v2, p1, p2}, Lg/brh;->ai(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aj(IZ)Z
    .locals 13

    iget-object v0, p0, Lg/aep;->v:Lg/ar;

    iget-object v1, v0, Lg/ar;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Lg/ar;->d:Lg/aep;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v4

    iget-object v5, v2, Lg/brh;->ch:[Lg/fol;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v7

    invoke-virtual {v2}, Lg/brh;->ei()I

    move-result v8

    invoke-virtual {v2}, Lg/brh;->dy()I

    move-result v9

    if-eqz p2, :cond_4

    sget-object v10, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v4, v10, :cond_0

    if-ne v7, v10, :cond_4

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/mi;

    iget v12, v11, Lg/mi;->e:I

    if-ne v12, p1, :cond_1

    invoke-virtual {v11}, Lg/mi;->n()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 p2, 0x0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    sget-object p2, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v4, p2, :cond_4

    sget-object p2, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v2, p2}, Lg/brh;->ds(Lg/fol;)V

    invoke-virtual {v0, v2, v3}, Lg/ar;->i(Lg/aep;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lg/brh;->ed(I)V

    iget-object p2, v2, Lg/brh;->be:Lg/dza;

    iget-object p2, p2, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v2}, Lg/brh;->eb()I

    move-result v10

    invoke-virtual {p2, v10}, Lg/eeh;->m(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    sget-object p2, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v7, p2, :cond_4

    sget-object p2, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v2, p2}, Lg/brh;->dl(Lg/fol;)V

    invoke-virtual {v0, v2, v6}, Lg/ar;->i(Lg/aep;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lg/brh;->dj(I)V

    iget-object p2, v2, Lg/brh;->bi:Lg/fju;

    iget-object p2, p2, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v2}, Lg/brh;->di()I

    move-result v10

    invoke-virtual {p2, v10}, Lg/eeh;->m(I)V

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    aget-object p2, v5, v3

    sget-object v5, Lg/fol;->FIXED:Lg/fol;

    if-eq p2, v5, :cond_5

    sget-object v5, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne p2, v5, :cond_7

    :cond_5
    invoke-virtual {v2}, Lg/brh;->eb()I

    move-result p2

    add-int/2addr p2, v8

    iget-object v5, v2, Lg/brh;->be:Lg/dza;

    iget-object v5, v5, Lg/mi;->f:Lg/big;

    invoke-virtual {v5, p2}, Lg/big;->m(I)V

    iget-object v5, v2, Lg/brh;->be:Lg/dza;

    iget-object v5, v5, Lg/mi;->c:Lg/eeh;

    sub-int/2addr p2, v8

    invoke-virtual {v5, p2}, Lg/eeh;->m(I)V

    :goto_1
    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    aget-object p2, v5, v6

    sget-object v5, Lg/fol;->FIXED:Lg/fol;

    if-eq p2, v5, :cond_8

    sget-object v5, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne p2, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v2}, Lg/brh;->di()I

    move-result p2

    add-int/2addr p2, v9

    iget-object v5, v2, Lg/brh;->bi:Lg/fju;

    iget-object v5, v5, Lg/mi;->f:Lg/big;

    invoke-virtual {v5, p2}, Lg/big;->m(I)V

    iget-object v5, v2, Lg/brh;->bi:Lg/fju;

    iget-object v5, v5, Lg/mi;->c:Lg/eeh;

    sub-int/2addr p2, v9

    invoke-virtual {v5, p2}, Lg/eeh;->m(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Lg/ar;->o()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/mi;

    iget v8, v5, Lg/mi;->e:I

    if-eq v8, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v8, v5, Lg/mi;->g:Lg/brh;

    if-ne v8, v2, :cond_a

    iget-boolean v8, v5, Lg/mi;->j:Z

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lg/mi;->q()V

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/mi;

    iget v5, v1, Lg/mi;->e:I

    if-eq v5, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v5, v1, Lg/mi;->g:Lg/brh;

    if-ne v5, v2, :cond_e

    goto :goto_5

    :cond_e
    iget-object v5, v1, Lg/mi;->a:Lg/big;

    iget-boolean v5, v5, Lg/big;->j:Z

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    iget-object v5, v1, Lg/mi;->f:Lg/big;

    iget-boolean v5, v5, Lg/big;->j:Z

    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    instance-of v5, v1, Lg/gnk;

    if-nez v5, :cond_c

    iget-object v1, v1, Lg/mi;->c:Lg/eeh;

    iget-boolean v1, v1, Lg/big;->j:Z

    if-nez v1, :cond_c

    goto :goto_6

    :cond_11
    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v2, v4}, Lg/brh;->ds(Lg/fol;)V

    invoke-virtual {v2, v7}, Lg/brh;->dl(Lg/fol;)V

    return v3
.end method

.method public final ak(Lg/fpd;)V
    .locals 3

    invoke-super {p0, p1}, Lg/brh;->ak(Lg/fpd;)V

    iget-object v0, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/brh;

    invoke-virtual {v2, p1}, Lg/brh;->ak(Lg/fpd;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final al(Lg/bwo;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lg/aep;->ag(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lg/brh;->g(Lg/bwo;Z)V

    iget-object v1, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    iget-object v7, v6, Lg/brh;->cq:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Lg/r;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/brh;

    instance-of v6, v4, Lg/r;

    if-eqz v6, :cond_7

    check-cast v4, Lg/r;

    const/4 v6, 0x0

    :goto_2
    iget v7, v4, Lg/gbi;->ev:I

    if-ge v6, v7, :cond_7

    iget-object v7, v4, Lg/gbi;->ew:[Lg/brh;

    aget-object v7, v7, v6

    iget-boolean v8, v4, Lg/r;->a:Z

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lg/brh;->j()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    iget v8, v4, Lg/r;->b:I

    if-eqz v8, :cond_5

    if-ne v8, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v7, v7, Lg/brh;->cq:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v7, v7, Lg/brh;->cq:[Z

    aput-boolean v5, v7, v2

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lg/aep;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_c

    iget-object v6, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lg/dbr;

    if-nez v7, :cond_9

    instance-of v8, v6, Lg/aar;

    if-eqz v8, :cond_b

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v6, p1, v0}, Lg/brh;->g(Lg/bwo;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/brh;

    check-cast v7, Lg/dbr;

    const/4 v8, 0x0

    :goto_8
    iget v9, v7, Lg/gbi;->ev:I

    if-ge v8, v9, :cond_d

    iget-object v9, v7, Lg/gbi;->ew:[Lg/brh;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v7, p1, v0}, Lg/dbr;->g(Lg/bwo;Z)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v4, v6, :cond_c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    invoke-virtual {v6, p1, v0}, Lg/brh;->g(Lg/bwo;Z)V

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    :cond_11
    sget-boolean v3, Lg/bwo;->a:Z

    if-eqz v3, :cond_16

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_14

    iget-object v4, p0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/brh;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lg/dbr;

    if-nez v6, :cond_13

    instance-of v6, v4, Lg/aar;

    if-eqz v6, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_14
    iget-object v1, p0, Lg/brh;->ch:[Lg/fol;

    aget-object v1, v1, v2

    sget-object v3, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v1, v3, :cond_15

    const/4 v10, 0x0

    goto :goto_d

    :cond_15
    const/4 v10, 0x1

    :goto_d
    const/4 v11, 0x0

    move-object v7, p0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/brh;

    invoke-static {p0, v8, v1}, Lg/bff;->au(Lg/aep;Lg/bwo;Lg/brh;)V

    invoke-virtual {v1, v8, v0}, Lg/brh;->g(Lg/bwo;Z)V

    goto :goto_e

    :cond_16
    move-object v6, p0

    move-object v8, p1

    const/4 p1, 0x0

    :goto_f
    if-ge p1, v1, :cond_1d

    iget-object v3, v6, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/brh;

    instance-of v4, v3, Lg/aep;

    if-eqz v4, :cond_1a

    iget-object v4, v3, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v4, v2

    aget-object v4, v4, v5

    sget-object v9, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v7, v9, :cond_17

    sget-object v10, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v3, v10}, Lg/brh;->ds(Lg/fol;)V

    :cond_17
    if-ne v4, v9, :cond_18

    sget-object v10, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v3, v10}, Lg/brh;->dl(Lg/fol;)V

    :cond_18
    invoke-virtual {v3, v8, v0}, Lg/brh;->g(Lg/bwo;Z)V

    if-ne v7, v9, :cond_19

    invoke-virtual {v3, v7}, Lg/brh;->ds(Lg/fol;)V

    :cond_19
    if-ne v4, v9, :cond_1c

    invoke-virtual {v3, v4}, Lg/brh;->dl(Lg/fol;)V

    goto :goto_10

    :cond_1a
    invoke-static {p0, v8, v3}, Lg/bff;->au(Lg/aep;Lg/bwo;Lg/brh;)V

    instance-of v4, v3, Lg/dbr;

    if-nez v4, :cond_1c

    instance-of v4, v3, Lg/aar;

    if-eqz v4, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {v3, v8, v0}, Lg/brh;->g(Lg/bwo;Z)V

    :cond_1c
    :goto_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1d
    iget p1, v6, Lg/aep;->u:I

    const/4 v0, 0x0

    if-lez p1, :cond_1e

    invoke-static {p0, v8, v0, v2}, Lg/dzm;->ag(Lg/aep;Lg/bwo;Ljava/util/ArrayList;I)V

    :cond_1e
    iget p1, v6, Lg/aep;->n:I

    if-lez p1, :cond_1f

    invoke-static {p0, v8, v0, v5}, Lg/dzm;->ag(Lg/aep;Lg/bwo;Ljava/util/ArrayList;I)V

    :cond_1f
    return-void
.end method
