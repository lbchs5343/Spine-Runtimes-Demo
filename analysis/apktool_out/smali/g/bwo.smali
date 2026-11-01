.class public final Lg/bwo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:[Lg/crb;

.field public final f:Lg/md;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lg/gz;

.field public final l:Lg/fpd;

.field public m:[Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:[Lg/gz;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lg/bwo;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/bwo;->n:Z

    iput v1, p0, Lg/bwo;->p:I

    const/16 v2, 0x20

    iput v2, p0, Lg/bwo;->h:I

    iput v2, p0, Lg/bwo;->j:I

    iput-boolean v1, p0, Lg/bwo;->b:Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lg/bwo;->m:[Z

    const/4 v3, 0x1

    iput v3, p0, Lg/bwo;->o:I

    iput v1, p0, Lg/bwo;->c:I

    iput v2, p0, Lg/bwo;->g:I

    new-array v0, v0, [Lg/crb;

    iput-object v0, p0, Lg/bwo;->e:[Lg/crb;

    iput v1, p0, Lg/bwo;->d:I

    new-array v0, v2, [Lg/gz;

    iput-object v0, p0, Lg/bwo;->q:[Lg/gz;

    invoke-virtual {p0}, Lg/bwo;->aa()V

    new-instance v0, Lg/fpd;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lg/fpd;-><init>(I)V

    new-instance v3, Lg/dqc;

    invoke-direct {v3}, Lg/dqc;-><init>()V

    iput-object v3, v0, Lg/fpd;->f:Ljava/lang/Object;

    new-instance v3, Lg/dqc;

    invoke-direct {v3}, Lg/dqc;-><init>()V

    iput-object v3, v0, Lg/fpd;->c:Ljava/lang/Object;

    new-array v2, v2, [Lg/crb;

    iput-object v2, v0, Lg/fpd;->d:Ljava/lang/Object;

    iput-object v0, p0, Lg/bwo;->l:Lg/fpd;

    new-instance v2, Lg/md;

    invoke-direct {v2, v0}, Lg/gz;-><init>(Lg/fpd;)V

    const/16 v3, 0x80

    new-array v4, v3, [Lg/crb;

    iput-object v4, v2, Lg/md;->p:[Lg/crb;

    new-array v3, v3, [Lg/crb;

    iput-object v3, v2, Lg/md;->r:[Lg/crb;

    iput v1, v2, Lg/md;->o:I

    new-instance v1, Lg/ffr;

    invoke-direct {v1, v2}, Lg/ffr;-><init>(Lg/md;)V

    iput-object v1, v2, Lg/md;->q:Lg/ffr;

    iput-object v2, p0, Lg/bwo;->f:Lg/md;

    new-instance v1, Lg/gz;

    invoke-direct {v1, v0}, Lg/gz;-><init>(Lg/fpd;)V

    iput-object v1, p0, Lg/bwo;->k:Lg/gz;

    return-void
.end method

.method public static r(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lg/hac;

    iget-object p0, p0, Lg/hac;->f:Lg/crb;

    if-eqz p0, :cond_0

    iget p0, p0, Lg/crb;->h:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final aa()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lg/bwo;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v2, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Lg/dqc;

    invoke-virtual {v2, v1}, Lg/dqc;->f(Lg/gz;)V

    :cond_0
    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ab()V
    .locals 3

    iget-object v0, p0, Lg/bwo;->f:Lg/md;

    invoke-virtual {v0}, Lg/md;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg/bwo;->ad()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lg/bwo;->b:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg/bwo;->c:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lg/gz;->b:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lg/bwo;->ag(Lg/md;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/bwo;->ad()V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lg/bwo;->ag(Lg/md;)V

    return-void
.end method

.method public final ac()Lg/crb;
    .locals 3

    iget v0, p0, Lg/bwo;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lg/bwo;->j:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lg/bwo;->u()V

    :cond_0
    sget-object v0, Lg/gdo;->SLACK:Lg/gdo;

    invoke-virtual {p0, v0}, Lg/bwo;->y(Lg/gdo;)Lg/crb;

    move-result-object v0

    iget v1, p0, Lg/bwo;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/bwo;->p:I

    iget v2, p0, Lg/bwo;->o:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg/bwo;->o:I

    iput v1, v0, Lg/crb;->k:I

    iget-object v2, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v2, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v2, [Lg/crb;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final ad()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lg/bwo;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v1, v1, v0

    iget-object v2, v1, Lg/gz;->c:Lg/crb;

    iget v1, v1, Lg/gz;->d:F

    iput v1, v2, Lg/crb;->h:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V
    .locals 6

    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p3, p1, v1}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p6, v1}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lg/fnf;->r(Lg/crb;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    iget-object p4, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p4, p1, v1}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p2, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p5, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p6, v1}, Lg/fnf;->r(Lg/crb;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Lg/gz;->d:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p4, p1, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p2, v1}, Lg/fnf;->r(Lg/crb;F)V

    int-to-float p1, p3

    iput p1, v0, Lg/gz;->d:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p6, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p5, v1}, Lg/fnf;->r(Lg/crb;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Lg/gz;->d:F

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lg/gz;->a:Lg/fnf;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    mul-float v3, v3, p4

    invoke-virtual {p1, p5, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    mul-float v1, v1, p4

    invoke-virtual {p1, p6, v1}, Lg/fnf;->r(Lg/crb;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Lg/gz;->d:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Lg/gz;->i(Lg/bwo;I)V

    :cond_7
    invoke-virtual {p0, v0}, Lg/bwo;->ai(Lg/gz;)V

    return-void
.end method

.method public final af(I)Lg/crb;
    .locals 4

    iget v0, p0, Lg/bwo;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lg/bwo;->j:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lg/bwo;->u()V

    :cond_0
    sget-object v0, Lg/gdo;->ERROR:Lg/gdo;

    invoke-virtual {p0, v0}, Lg/bwo;->y(Lg/gdo;)Lg/crb;

    move-result-object v0

    iget-object v1, v0, Lg/crb;->a:[F

    iget v2, p0, Lg/bwo;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg/bwo;->p:I

    iget v3, p0, Lg/bwo;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lg/bwo;->o:I

    iput v2, v0, Lg/crb;->k:I

    iput p1, v0, Lg/crb;->g:I

    iget-object p1, p0, Lg/bwo;->l:Lg/fpd;

    iget-object p1, p1, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p1, [Lg/crb;

    aput-object v0, p1, v2

    iget-object p1, p0, Lg/bwo;->f:Lg/md;

    iget-object v2, p1, Lg/md;->q:Lg/ffr;

    iput-object v0, v2, Lg/ffr;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v2, v0, Lg/crb;->g:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Lg/md;->t(Lg/crb;)V

    return-object v0
.end method

.method public final ag(Lg/md;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lg/bwo;->c:I

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Lg/bwo;->q:[Lg/gz;

    aget-object v3, v3, v2

    iget-object v4, v3, Lg/gz;->c:Lg/crb;

    iget-object v4, v4, Lg/crb;->j:Lg/gdo;

    sget-object v5, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Lg/gz;->d:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_d

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v6, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Lg/bwo;->c:I

    if-ge v8, v12, :cond_9

    iget-object v12, v0, Lg/bwo;->q:[Lg/gz;

    aget-object v12, v12, v8

    iget-object v13, v12, Lg/gz;->c:Lg/crb;

    iget-object v13, v13, Lg/crb;->j:Lg/gdo;

    sget-object v14, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    if-ne v13, v14, :cond_1

    goto :goto_6

    :cond_1
    iget-boolean v13, v12, Lg/gz;->b:Z

    if-eqz v13, :cond_2

    goto :goto_6

    :cond_2
    iget v13, v12, Lg/gz;->d:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_8

    iget-object v13, v12, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v13}, Lg/fnf;->l()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    iget-object v15, v12, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v15, v14}, Lg/fnf;->m(I)Lg/crb;

    move-result-object v15

    iget-object v1, v12, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v1, v15}, Lg/fnf;->q(Lg/crb;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_3

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x9

    if-ge v4, v5, :cond_7

    iget-object v5, v15, Lg/crb;->b:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v7

    if-gez v17, :cond_4

    if-eq v4, v11, :cond_5

    :cond_4
    if-le v4, v11, :cond_6

    :cond_5
    iget v7, v15, Lg/crb;->k:I

    move v11, v4

    move v10, v7

    move v9, v8

    move v7, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    if-eq v9, v6, :cond_a

    iget-object v1, v0, Lg/bwo;->q:[Lg/gz;

    aget-object v1, v1, v9

    iget-object v4, v1, Lg/gz;->c:Lg/crb;

    iput v6, v4, Lg/crb;->d:I

    iget-object v4, v0, Lg/bwo;->l:Lg/fpd;

    iget-object v4, v4, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v4, [Lg/crb;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Lg/gz;->n(Lg/crb;)V

    iget-object v4, v1, Lg/gz;->c:Lg/crb;

    iput v9, v4, Lg/crb;->d:I

    invoke-virtual {v4, v0, v1}, Lg/crb;->n(Lg/bwo;Lg/gz;)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    iget v1, v0, Lg/bwo;->o:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lg/bwo;->ak(Lg/gz;)V

    invoke-virtual {v0}, Lg/bwo;->ad()V

    return-void
.end method

.method public final ah()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v3, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v3, [Lg/crb;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lg/crb;->q()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lg/dqc;

    iget-object v3, p0, Lg/bwo;->e:[Lg/crb;

    iget v4, p0, Lg/bwo;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    if-le v4, v5, :cond_2

    array-length v4, v3

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget v7, v1, Lg/dqc;->e:I

    iget-object v8, v1, Lg/dqc;->d:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput-object v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lg/dqc;->e:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lg/bwo;->d:I

    iget-object v1, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, [Lg/crb;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lg/bwo;->p:I

    iget-object v1, p0, Lg/bwo;->f:Lg/md;

    iput v0, v1, Lg/md;->o:I

    const/4 v3, 0x0

    iput v3, v1, Lg/gz;->d:F

    const/4 v1, 0x1

    iput v1, p0, Lg/bwo;->o:I

    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lg/bwo;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lg/bwo;->aa()V

    iput v0, p0, Lg/bwo;->c:I

    new-instance v0, Lg/gz;

    invoke-direct {v0, v2}, Lg/gz;-><init>(Lg/fpd;)V

    iput-object v0, p0, Lg/bwo;->k:Lg/gz;

    return-void
.end method

.method public final ai(Lg/gz;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/bwo;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lg/bwo;->g:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Lg/bwo;->o:I

    add-int/2addr v2, v3

    iget v4, v0, Lg/bwo;->j:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lg/bwo;->u()V

    :cond_1
    iget-boolean v2, v1, Lg/gz;->b:Z

    if-nez v2, :cond_1f

    iget-object v2, v1, Lg/gz;->e:Ljava/util/ArrayList;

    iget-object v5, v0, Lg/bwo;->q:[Lg/gz;

    array-length v5, v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_8

    iget-object v7, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v7}, Lg/fnf;->l()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v9, v8}, Lg/fnf;->m(I)Lg/crb;

    move-result-object v9

    iget v10, v9, Lg/crb;->d:I

    if-ne v10, v6, :cond_3

    iget-boolean v10, v9, Lg/crb;->l:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/crb;

    iget-boolean v10, v9, Lg/crb;->l:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v3}, Lg/gz;->f(Lg/bwo;Lg/crb;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, Lg/bwo;->q:[Lg/gz;

    iget v9, v9, Lg/crb;->d:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v3}, Lg/gz;->k(Lg/bwo;Lg/gz;Z)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    :cond_8
    iget-object v2, v1, Lg/gz;->c:Lg/crb;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v2}, Lg/fnf;->l()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v3, v1, Lg/gz;->b:Z

    iput-boolean v3, v0, Lg/bwo;->n:Z

    :cond_9
    :goto_5
    invoke-virtual {v1}, Lg/gz;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_12

    :cond_a
    iget v2, v1, Lg/gz;->d:F

    const/4 v5, 0x0

    cmpg-float v7, v2, v5

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float v2, v2, v7

    iput v2, v1, Lg/gz;->d:F

    iget-object v2, v1, Lg/gz;->a:Lg/fnf;

    iget v7, v2, Lg/fnf;->a:I

    const/4 v8, 0x0

    :goto_6
    const/4 v9, -0x1

    if-eq v7, v9, :cond_b

    iget v9, v2, Lg/fnf;->d:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Lg/fnf;->j:[F

    aget v10, v9, v7

    const/high16 v11, -0x40800000    # -1.0f

    mul-float v10, v10, v11

    aput v10, v9, v7

    iget-object v9, v2, Lg/fnf;->e:[I

    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v2}, Lg/fnf;->l()I

    move-result v2

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v8, v2, :cond_14

    iget-object v15, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v15, v8}, Lg/fnf;->o(I)F

    move-result v15

    iget-object v4, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v4, v8}, Lg/fnf;->m(I)Lg/crb;

    move-result-object v4

    const/16 v16, 0x0

    iget-object v5, v4, Lg/crb;->j:Lg/gdo;

    sget-object v6, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    if-ne v5, v6, :cond_f

    if-nez v9, :cond_d

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_c

    :goto_8
    const/4 v12, 0x1

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_9
    move-object v9, v4

    move v11, v15

    goto :goto_c

    :cond_d
    cmpl-float v5, v11, v15

    if-lez v5, :cond_e

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_c

    goto :goto_8

    :cond_e
    if-nez v12, :cond_13

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_13

    move-object v9, v4

    move v11, v15

    const/4 v12, 0x1

    goto :goto_c

    :cond_f
    if-nez v9, :cond_13

    cmpg-float v5, v15, v16

    if-gez v5, :cond_13

    if-nez v10, :cond_11

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_10

    :goto_a
    const/4 v14, 0x1

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_b
    move-object v10, v4

    move v13, v15

    goto :goto_c

    :cond_11
    cmpl-float v5, v13, v15

    if-lez v5, :cond_12

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_10

    goto :goto_a

    :cond_12
    if-nez v14, :cond_13

    iget v5, v4, Lg/crb;->e:I

    if-gt v5, v3, :cond_13

    move-object v10, v4

    move v13, v15

    const/4 v14, 0x1

    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto :goto_7

    :cond_14
    const/16 v16, 0x0

    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    move-object v9, v10

    :goto_d
    if-nez v9, :cond_16

    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    invoke-virtual {v1, v9}, Lg/gz;->n(Lg/crb;)V

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v4}, Lg/fnf;->l()I

    move-result v4

    if-nez v4, :cond_17

    iput-boolean v3, v1, Lg/gz;->b:Z

    :cond_17
    if-eqz v2, :cond_1c

    iget v2, v0, Lg/bwo;->o:I

    add-int/2addr v2, v3

    iget v4, v0, Lg/bwo;->j:I

    if-lt v2, v4, :cond_18

    invoke-virtual {v0}, Lg/bwo;->u()V

    :cond_18
    sget-object v2, Lg/gdo;->SLACK:Lg/gdo;

    invoke-virtual {v0, v2}, Lg/bwo;->y(Lg/gdo;)Lg/crb;

    move-result-object v2

    iget v4, v0, Lg/bwo;->p:I

    add-int/2addr v4, v3

    iput v4, v0, Lg/bwo;->p:I

    iget v5, v0, Lg/bwo;->o:I

    add-int/2addr v5, v3

    iput v5, v0, Lg/bwo;->o:I

    iput v4, v2, Lg/crb;->k:I

    iget-object v5, v0, Lg/bwo;->l:Lg/fpd;

    iget-object v6, v5, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v6, [Lg/crb;

    aput-object v2, v6, v4

    iput-object v2, v1, Lg/gz;->c:Lg/crb;

    iget v4, v0, Lg/bwo;->c:I

    invoke-virtual/range {p0 .. p1}, Lg/bwo;->s(Lg/gz;)V

    iget v6, v0, Lg/bwo;->c:I

    add-int/2addr v4, v3

    if-ne v6, v4, :cond_1c

    iget-object v4, v0, Lg/bwo;->k:Lg/gz;

    iput-object v7, v4, Lg/gz;->c:Lg/crb;

    iget-object v6, v4, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v6}, Lg/fnf;->p()V

    const/4 v6, 0x0

    :goto_f
    iget-object v8, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v8}, Lg/fnf;->l()I

    move-result v8

    if-ge v6, v8, :cond_19

    iget-object v8, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v8, v6}, Lg/fnf;->m(I)Lg/crb;

    move-result-object v8

    iget-object v9, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v9, v6}, Lg/fnf;->o(I)F

    move-result v9

    iget-object v10, v4, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v10, v8, v9, v3}, Lg/fnf;->n(Lg/crb;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_19
    iget-object v4, v0, Lg/bwo;->k:Lg/gz;

    invoke-virtual {v0, v4}, Lg/bwo;->ak(Lg/gz;)V

    iget v4, v2, Lg/crb;->d:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1d

    iget-object v4, v1, Lg/gz;->c:Lg/crb;

    if-ne v4, v2, :cond_1a

    invoke-virtual {v1, v7, v2}, Lg/gz;->j([ZLg/crb;)Lg/crb;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Lg/gz;->n(Lg/crb;)V

    :cond_1a
    iget-boolean v2, v1, Lg/gz;->b:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Lg/gz;->c:Lg/crb;

    invoke-virtual {v2, v0, v1}, Lg/crb;->n(Lg/bwo;Lg/gz;)V

    :cond_1b
    iget-object v2, v5, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Lg/dqc;

    invoke-virtual {v2, v1}, Lg/dqc;->f(Lg/gz;)V

    iget v2, v0, Lg/bwo;->c:I

    sub-int/2addr v2, v3

    iput v2, v0, Lg/bwo;->c:I

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :cond_1d
    :goto_10
    iget-object v2, v1, Lg/gz;->c:Lg/crb;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lg/crb;->j:Lg/gdo;

    sget-object v4, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    if-eq v2, v4, :cond_1e

    iget v2, v1, Lg/gz;->d:F

    cmpg-float v2, v2, v16

    if-ltz v2, :cond_20

    :cond_1e
    move v4, v3

    goto :goto_11

    :cond_1f
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_20

    invoke-virtual/range {p0 .. p1}, Lg/bwo;->s(Lg/gz;)V

    :cond_20
    :goto_12
    return-void
.end method

.method public final aj(Lg/crb;Lg/crb;II)V
    .locals 3

    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v0

    invoke-virtual {p0}, Lg/bwo;->ac()Lg/crb;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lg/crb;->g:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lg/gz;->m(Lg/crb;Lg/crb;Lg/crb;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, v1}, Lg/fnf;->q(Lg/crb;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Lg/bwo;->af(I)Lg/crb;

    move-result-object p2

    iget-object p3, v0, Lg/gz;->a:Lg/fnf;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lg/fnf;->r(Lg/crb;F)V

    :cond_0
    invoke-virtual {p0, v0}, Lg/bwo;->ai(Lg/gz;)V

    return-void
.end method

.method public final ak(Lg/gz;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lg/bwo;->o:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lg/bwo;->m:[Z

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-nez v3, :cond_e

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Lg/bwo;->o:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v6, v1, Lg/gz;->c:Lg/crb;

    if-eqz v6, :cond_2

    iget-object v7, v0, Lg/bwo;->m:[Z

    iget v6, v6, Lg/crb;->k:I

    aput-boolean v5, v7, v6

    :cond_2
    iget-object v6, v0, Lg/bwo;->m:[Z

    invoke-virtual {v1, v6}, Lg/gz;->g([Z)Lg/crb;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v0, Lg/bwo;->m:[Z

    iget v8, v6, Lg/crb;->k:I

    aget-boolean v9, v7, v8

    if-eqz v9, :cond_3

    goto/16 :goto_8

    :cond_3
    aput-boolean v5, v7, v8

    :cond_4
    if-eqz v6, :cond_c

    const/4 v5, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_2
    iget v10, v0, Lg/bwo;->c:I

    if-ge v8, v10, :cond_b

    iget-object v10, v0, Lg/bwo;->q:[Lg/gz;

    aget-object v10, v10, v8

    iget-object v11, v10, Lg/gz;->c:Lg/crb;

    iget-object v11, v11, Lg/crb;->j:Lg/gdo;

    sget-object v12, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    if-ne v11, v12, :cond_5

    goto :goto_6

    :cond_5
    iget-boolean v11, v10, Lg/gz;->b:Z

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    iget-object v11, v10, Lg/gz;->a:Lg/fnf;

    iget v12, v11, Lg/fnf;->a:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-eq v12, v14, :cond_9

    iget v2, v11, Lg/fnf;->d:I

    if-ge v15, v2, :cond_9

    iget-object v2, v11, Lg/fnf;->c:[I

    aget v2, v2, v12

    iget v13, v6, Lg/crb;->k:I

    if-ne v2, v13, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    iget-object v2, v11, Lg/fnf;->e:[I

    aget v12, v2, v12

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_a

    iget-object v2, v10, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v2, v6}, Lg/fnf;->q(Lg/crb;)F

    move-result v2

    const/4 v11, 0x0

    cmpg-float v11, v2, v11

    if-gez v11, :cond_a

    iget v10, v10, Lg/gz;->d:F

    neg-float v10, v10

    div-float/2addr v10, v2

    cmpg-float v2, v10, v7

    if-gez v2, :cond_a

    move v9, v8

    move v7, v10

    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    if-le v9, v5, :cond_d

    iget-object v2, v0, Lg/bwo;->q:[Lg/gz;

    aget-object v2, v2, v9

    iget-object v7, v2, Lg/gz;->c:Lg/crb;

    iput v5, v7, Lg/crb;->d:I

    invoke-virtual {v2, v6}, Lg/gz;->n(Lg/crb;)V

    iget-object v5, v2, Lg/gz;->c:Lg/crb;

    iput v9, v5, Lg/crb;->d:I

    invoke-virtual {v5, v0, v2}, Lg/crb;->n(Lg/bwo;Lg/gz;)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    :goto_8
    return-void
.end method

.method public final s(Lg/gz;)V
    .locals 7

    iget-boolean v0, p1, Lg/gz;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/gz;->c:Lg/crb;

    iget p1, p1, Lg/gz;->d:F

    invoke-virtual {v0, p0, p1}, Lg/crb;->m(Lg/bwo;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/bwo;->q:[Lg/gz;

    iget v1, p0, Lg/bwo;->c:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lg/gz;->c:Lg/crb;

    iput v1, v0, Lg/crb;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/bwo;->c:I

    invoke-virtual {v0, p0, p1}, Lg/crb;->n(Lg/bwo;Lg/gz;)V

    :goto_0
    iget-boolean p1, p0, Lg/bwo;->n:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lg/bwo;->c:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lg/gz;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lg/gz;->c:Lg/crb;

    iget v3, v1, Lg/gz;->d:F

    invoke-virtual {v2, p0, v3}, Lg/crb;->m(Lg/bwo;F)V

    iget-object v2, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v2, v2, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v2, Lg/dqc;

    invoke-virtual {v2, v1}, Lg/dqc;->f(Lg/gz;)V

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lg/bwo;->c:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lg/bwo;->q:[Lg/gz;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Lg/gz;->c:Lg/crb;

    iget v5, v3, Lg/crb;->d:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Lg/crb;->d:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lg/bwo;->c:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lg/bwo;->n:Z

    :cond_7
    return-void
.end method

.method public final t(Ljava/lang/Object;)Lg/crb;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lg/bwo;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lg/bwo;->j:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lg/bwo;->u()V

    :cond_1
    instance-of v0, p1, Lg/hac;

    if-eqz v0, :cond_6

    check-cast p1, Lg/hac;

    iget-object v0, p1, Lg/hac;->f:Lg/crb;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object v0, p1, Lg/hac;->f:Lg/crb;

    :cond_2
    iget p1, v0, Lg/crb;->k:I

    const/4 v1, -0x1

    iget-object v2, p0, Lg/bwo;->l:Lg/fpd;

    if-eq p1, v1, :cond_4

    iget v3, p0, Lg/bwo;->p:I

    if-gt p1, v3, :cond_4

    iget-object v3, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v3, [Lg/crb;

    aget-object v3, v3, p1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    if-eq p1, v1, :cond_5

    invoke-virtual {v0}, Lg/crb;->q()V

    :cond_5
    iget p1, p0, Lg/bwo;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/bwo;->p:I

    iget v1, p0, Lg/bwo;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/bwo;->o:I

    iput p1, v0, Lg/crb;->k:I

    sget-object v1, Lg/gdo;->UNRESTRICTED:Lg/gdo;

    iput-object v1, v0, Lg/crb;->j:Lg/gdo;

    iget-object v1, v2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, [Lg/crb;

    aput-object v0, v1, p1

    return-object v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final u()V
    .locals 3

    iget v0, p0, Lg/bwo;->h:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/bwo;->h:I

    iget-object v1, p0, Lg/bwo;->q:[Lg/gz;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gz;

    iput-object v0, p0, Lg/bwo;->q:[Lg/gz;

    iget-object v0, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v1, v0, Lg/fpd;->d:Ljava/lang/Object;

    check-cast v1, [Lg/crb;

    iget v2, p0, Lg/bwo;->h:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/crb;

    iput-object v1, v0, Lg/fpd;->d:Ljava/lang/Object;

    iget v0, p0, Lg/bwo;->h:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lg/bwo;->m:[Z

    iput v0, p0, Lg/bwo;->j:I

    iput v0, p0, Lg/bwo;->g:I

    return-void
.end method

.method public final v(Lg/crb;I)V
    .locals 4

    iget v0, p1, Lg/crb;->d:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Lg/crb;->m(Lg/bwo;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lg/bwo;->p:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lg/bwo;->l:Lg/fpd;

    iget-object p2, p2, Lg/fpd;->d:Ljava/lang/Object;

    check-cast p2, [Lg/crb;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_5

    iget-object v3, p0, Lg/bwo;->q:[Lg/gz;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Lg/gz;->b:Z

    if-eqz v3, :cond_2

    int-to-float p1, p2

    iput p1, v0, Lg/gz;->d:F

    return-void

    :cond_2
    iget-object v3, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v3}, Lg/fnf;->l()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v1, v0, Lg/gz;->b:Z

    int-to-float p1, p2

    iput p1, v0, Lg/gz;->d:F

    return-void

    :cond_3
    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    iput p2, v0, Lg/gz;->d:F

    iget-object p2, v0, Lg/gz;->a:Lg/fnf;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Lg/fnf;->r(Lg/crb;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Lg/gz;->d:F

    iget-object p2, v0, Lg/gz;->a:Lg/fnf;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Lg/fnf;->r(Lg/crb;F)V

    :goto_1
    invoke-virtual {p0, v0}, Lg/bwo;->ai(Lg/gz;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v0

    iput-object p1, v0, Lg/gz;->c:Lg/crb;

    int-to-float p2, p2

    iput p2, p1, Lg/crb;->h:F

    iput p2, v0, Lg/gz;->d:F

    iput-boolean v1, v0, Lg/gz;->b:Z

    invoke-virtual {p0, v0}, Lg/bwo;->ai(Lg/gz;)V

    return-void
.end method

.method public final w()Lg/gz;
    .locals 6

    iget-object v0, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v1, v0, Lg/fpd;->f:Ljava/lang/Object;

    check-cast v1, Lg/dqc;

    iget v2, v1, Lg/dqc;->e:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget-object v4, v1, Lg/dqc;->d:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aput-object v3, v4, v2

    iput v2, v1, Lg/dqc;->e:I

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    check-cast v5, Lg/gz;

    if-nez v5, :cond_1

    new-instance v5, Lg/gz;

    invoke-direct {v5, v0}, Lg/gz;-><init>(Lg/fpd;)V

    goto :goto_1

    :cond_1
    iput-object v3, v5, Lg/gz;->c:Lg/crb;

    iget-object v0, v5, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v0}, Lg/fnf;->p()V

    const/4 v0, 0x0

    iput v0, v5, Lg/gz;->d:F

    const/4 v0, 0x0

    iput-boolean v0, v5, Lg/gz;->b:Z

    :goto_1
    return-object v5
.end method

.method public final x(Lg/crb;Lg/crb;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Lg/crb;->l:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lg/crb;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Lg/crb;->h:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lg/crb;->m(Lg/bwo;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    iput p3, v1, Lg/gz;->d:F

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v2, p1, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p2, p3}, Lg/fnf;->r(Lg/crb;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v2, p1, p3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object p1, v1, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, p2, v3}, Lg/fnf;->r(Lg/crb;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    invoke-virtual {v1, p0, p4}, Lg/gz;->i(Lg/bwo;I)V

    :cond_4
    invoke-virtual {p0, v1}, Lg/bwo;->ai(Lg/gz;)V

    return-void
.end method

.method public final y(Lg/gdo;)Lg/crb;
    .locals 5

    iget-object v0, p0, Lg/bwo;->l:Lg/fpd;

    iget-object v0, v0, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v0, Lg/dqc;

    iget v1, v0, Lg/dqc;->e:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Lg/dqc;->d:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v2, v3, v1

    iput v1, v0, Lg/dqc;->e:I

    move-object v2, v4

    :cond_0
    check-cast v2, Lg/crb;

    if-nez v2, :cond_1

    new-instance v2, Lg/crb;

    invoke-direct {v2, p1}, Lg/crb;-><init>(Lg/gdo;)V

    iput-object p1, v2, Lg/crb;->j:Lg/gdo;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lg/crb;->q()V

    iput-object p1, v2, Lg/crb;->j:Lg/gdo;

    :goto_0
    iget p1, p0, Lg/bwo;->d:I

    iget v0, p0, Lg/bwo;->i:I

    if-lt p1, v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/bwo;->i:I

    iget-object p1, p0, Lg/bwo;->e:[Lg/crb;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/crb;

    iput-object p1, p0, Lg/bwo;->e:[Lg/crb;

    :cond_2
    iget-object p1, p0, Lg/bwo;->e:[Lg/crb;

    iget v0, p0, Lg/bwo;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/bwo;->d:I

    aput-object v2, p1, v0

    return-object v2
.end method

.method public final z(Lg/crb;Lg/crb;II)V
    .locals 3

    invoke-virtual {p0}, Lg/bwo;->w()Lg/gz;

    move-result-object v0

    invoke-virtual {p0}, Lg/bwo;->ac()Lg/crb;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lg/crb;->g:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lg/gz;->l(Lg/crb;Lg/crb;Lg/crb;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lg/gz;->a:Lg/fnf;

    invoke-virtual {p1, v1}, Lg/fnf;->q(Lg/crb;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Lg/bwo;->af(I)Lg/crb;

    move-result-object p2

    iget-object p3, v0, Lg/gz;->a:Lg/fnf;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Lg/fnf;->r(Lg/crb;F)V

    :cond_0
    invoke-virtual {p0, v0}, Lg/bwo;->ai(Lg/gz;)V

    return-void
.end method
