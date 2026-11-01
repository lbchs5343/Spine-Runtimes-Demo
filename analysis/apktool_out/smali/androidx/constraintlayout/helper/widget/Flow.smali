.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lg/gcr;
.source "SourceFile"


# instance fields
.field public final a:Lg/dbr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lg/atw;->h:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/atw;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lg/atw;->e:Landroid/content/Context;

    invoke-super {p0, p2}, Lg/gcr;->r(Landroid/util/AttributeSet;)V

    new-instance p1, Lg/dbr;

    invoke-direct {p1}, Lg/gbi;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lg/dbr;->al:I

    iput v0, p1, Lg/dbr;->n:I

    iput v0, p1, Lg/dbr;->en:I

    iput v0, p1, Lg/dbr;->eq:I

    iput v0, p1, Lg/dbr;->aa:I

    iput v0, p1, Lg/dbr;->eo:I

    iput-boolean v0, p1, Lg/dbr;->u:Z

    iput v0, p1, Lg/dbr;->aj:I

    iput v0, p1, Lg/dbr;->t:I

    new-instance v1, Lg/dcu;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lg/dbr;->h:Lg/dcu;

    const/4 v1, 0x0

    iput-object v1, p1, Lg/dbr;->x:Lg/gri;

    const/4 v2, -0x1

    iput v2, p1, Lg/dbr;->ek:I

    iput v2, p1, Lg/dbr;->q:I

    iput v2, p1, Lg/dbr;->z:I

    iput v2, p1, Lg/dbr;->ah:I

    iput v2, p1, Lg/dbr;->y:I

    iput v2, p1, Lg/dbr;->ep:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p1, Lg/dbr;->p:F

    iput v3, p1, Lg/dbr;->a:F

    iput v3, p1, Lg/dbr;->d:F

    iput v3, p1, Lg/dbr;->v:F

    iput v3, p1, Lg/dbr;->b:F

    iput v3, p1, Lg/dbr;->c:F

    iput v0, p1, Lg/dbr;->ab:I

    iput v0, p1, Lg/dbr;->w:I

    const/4 v4, 0x2

    iput v4, p1, Lg/dbr;->ac:I

    iput v4, p1, Lg/dbr;->l:I

    iput v0, p1, Lg/dbr;->em:I

    iput v2, p1, Lg/dbr;->o:I

    iput v0, p1, Lg/dbr;->ag:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lg/dbr;->r:Ljava/util/ArrayList;

    iput-object v1, p1, Lg/dbr;->ae:[Lg/brh;

    iput-object v1, p1, Lg/dbr;->el:[Lg/brh;

    iput-object v1, p1, Lg/dbr;->s:[I

    iput v0, p1, Lg/dbr;->f:I

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lg/bfv;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1a

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ag:I

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->al:I

    iput v5, v6, Lg/dbr;->n:I

    iput v5, v6, Lg/dbr;->en:I

    iput v5, v6, Lg/dbr;->eq:I

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->en:I

    iput v5, v6, Lg/dbr;->aa:I

    iput v5, v6, Lg/dbr;->eo:I

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0x13

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->eq:I

    goto/16 :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->aa:I

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->al:I

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->eo:I

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->n:I

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x36

    if-ne v5, v6, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->em:I

    goto/16 :goto_1

    :cond_8
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_9

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ek:I

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x35

    if-ne v5, v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->q:I

    goto/16 :goto_1

    :cond_a
    const/16 v6, 0x26

    if-ne v5, v6, :cond_b

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->z:I

    goto/16 :goto_1

    :cond_b
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_c

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->y:I

    goto/16 :goto_1

    :cond_c
    const/16 v6, 0x28

    if-ne v5, v6, :cond_d

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ah:I

    goto/16 :goto_1

    :cond_d
    const/16 v6, 0x30

    if-ne v5, v6, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ep:I

    goto/16 :goto_1

    :cond_e
    const/16 v6, 0x2a

    if-ne v5, v6, :cond_f

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->p:F

    goto/16 :goto_1

    :cond_f
    const/16 v6, 0x25

    if-ne v5, v6, :cond_10

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->d:F

    goto/16 :goto_1

    :cond_10
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_11

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->b:F

    goto/16 :goto_1

    :cond_11
    const/16 v6, 0x27

    if-ne v5, v6, :cond_12

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->v:F

    goto :goto_1

    :cond_12
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_13

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->c:F

    goto :goto_1

    :cond_13
    const/16 v6, 0x33

    if-ne v5, v6, :cond_14

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lg/dbr;->a:F

    goto :goto_1

    :cond_14
    const/16 v6, 0x29

    if-ne v5, v6, :cond_15

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ac:I

    goto :goto_1

    :cond_15
    const/16 v6, 0x32

    if-ne v5, v6, :cond_16

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->l:I

    goto :goto_1

    :cond_16
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_17

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->ab:I

    goto :goto_1

    :cond_17
    const/16 v6, 0x34

    if-ne v5, v6, :cond_18

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->w:I

    goto :goto_1

    :cond_18
    const/16 v6, 0x31

    if-ne v5, v6, :cond_19

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lg/dbr;->o:I

    :cond_19
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput-object p1, p0, Lg/atw;->f:Lg/gbi;

    invoke-virtual {p0}, Lg/atw;->o()V

    return-void
.end method


# virtual methods
.method public final b(Lg/brh;Z)V
    .locals 2

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iget v0, p1, Lg/dbr;->en:I

    if-gtz v0, :cond_1

    iget v1, p1, Lg/dbr;->eq:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget p2, p1, Lg/dbr;->eq:I

    iput p2, p1, Lg/dbr;->aa:I

    iput v0, p1, Lg/dbr;->eo:I

    return-void

    :cond_2
    iput v0, p1, Lg/dbr;->aa:I

    iget p2, p1, Lg/dbr;->eq:I

    iput p2, p1, Lg/dbr;->eo:I

    return-void
.end method

.method public final c(Lg/dbr;II)V
    .locals 38

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v2, :cond_79

    iget-object v14, v2, Lg/brh;->ch:[Lg/fol;

    iget-object v15, v2, Lg/brh;->bx:Lg/hac;

    iget-object v1, v2, Lg/brh;->cw:Lg/hac;

    iget-object v3, v2, Lg/brh;->br:Lg/hac;

    iget-object v4, v2, Lg/brh;->as:Lg/hac;

    iget-object v5, v2, Lg/dbr;->r:Ljava/util/ArrayList;

    iget v6, v2, Lg/gbi;->ev:I

    if-lez v6, :cond_8

    iget-object v6, v2, Lg/dbr;->h:Lg/dcu;

    iget-object v7, v2, Lg/brh;->bj:Lg/brh;

    if-eqz v7, :cond_0

    check-cast v7, Lg/aep;

    iget-object v7, v7, Lg/aep;->y:Lg/gri;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    iput v13, v2, Lg/dbr;->aj:I

    iput v13, v2, Lg/dbr;->t:I

    iput-boolean v13, v2, Lg/dbr;->u:Z

    goto/16 :goto_3e

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget v13, v2, Lg/gbi;->ev:I

    if-ge v8, v13, :cond_8

    iget-object v13, v2, Lg/gbi;->ew:[Lg/brh;

    aget-object v13, v13, v8

    if-nez v13, :cond_2

    move-object/from16 v17, v1

    :goto_2
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    goto :goto_3

    :cond_2
    move-object/from16 v17, v1

    instance-of v1, v13, Lg/aar;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v3

    move-object/from16 v19, v4

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v4

    sget-object v1, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    move-object/from16 v20, v5

    if-ne v3, v1, :cond_4

    iget v5, v13, Lg/brh;->da:I

    move/from16 v21, v8

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    if-ne v4, v1, :cond_5

    iget v5, v13, Lg/brh;->by:I

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_4
    move/from16 v21, v8

    :cond_5
    if-ne v3, v1, :cond_6

    sget-object v3, Lg/fol;->WRAP_CONTENT:Lg/fol;

    :cond_6
    if-ne v4, v1, :cond_7

    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    :cond_7
    iput-object v3, v6, Lg/dcu;->d:Lg/fol;

    iput-object v4, v6, Lg/dcu;->g:Lg/fol;

    invoke-virtual {v13}, Lg/brh;->eb()I

    move-result v1

    iput v1, v6, Lg/dcu;->i:I

    invoke-virtual {v13}, Lg/brh;->di()I

    move-result v1

    iput v1, v6, Lg/dcu;->b:I

    invoke-virtual {v7, v13, v6}, Lg/gri;->j(Lg/brh;Lg/dcu;)V

    iget v1, v6, Lg/dcu;->c:I

    invoke-virtual {v13, v1}, Lg/brh;->ed(I)V

    iget v1, v6, Lg/dcu;->e:I

    invoke-virtual {v13, v1}, Lg/brh;->dj(I)V

    iget v1, v6, Lg/dcu;->j:I

    invoke-virtual {v13, v1}, Lg/brh;->ee(I)V

    :goto_3
    add-int/lit8 v8, v21, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_1

    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    iget v13, v2, Lg/dbr;->aa:I

    iget v1, v2, Lg/dbr;->eo:I

    iget v3, v2, Lg/dbr;->al:I

    iget v4, v2, Lg/dbr;->n:I

    const/4 v5, 0x2

    new-array v6, v5, [I

    sub-int v7, v10, v13

    sub-int/2addr v7, v1

    iget v8, v2, Lg/dbr;->ag:I

    const/4 v5, 0x1

    if-ne v8, v5, :cond_9

    sub-int v5, v12, v3

    sub-int v7, v5, v4

    :cond_9
    move/from16 v32, v7

    const/4 v5, -0x1

    if-nez v8, :cond_b

    iget v7, v2, Lg/dbr;->ek:I

    if-ne v7, v5, :cond_a

    const/4 v7, 0x0

    iput v7, v2, Lg/dbr;->ek:I

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    iget v8, v2, Lg/dbr;->q:I

    if-ne v8, v5, :cond_d

    iput v7, v2, Lg/dbr;->q:I

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    iget v8, v2, Lg/dbr;->ek:I

    if-ne v8, v5, :cond_c

    iput v7, v2, Lg/dbr;->ek:I

    :cond_c
    iget v8, v2, Lg/dbr;->q:I

    if-ne v8, v5, :cond_d

    iput v7, v2, Lg/dbr;->q:I

    :cond_d
    :goto_5
    iget-object v5, v2, Lg/gbi;->ew:[Lg/brh;

    move/from16 v22, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    iget v1, v2, Lg/gbi;->ev:I

    move/from16 v23, v3

    const/16 v3, 0x8

    if-ge v7, v1, :cond_f

    iget-object v1, v2, Lg/gbi;->ew:[Lg/brh;

    aget-object v1, v1, v7

    iget v1, v1, Lg/brh;->aq:I

    if-ne v1, v3, :cond_e

    add-int/lit8 v8, v8, 0x1

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v23

    goto :goto_6

    :cond_f
    if-lez v8, :cond_12

    sub-int/2addr v1, v8

    new-array v5, v1, [Lg/brh;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_7
    iget v8, v2, Lg/gbi;->ev:I

    if-ge v1, v8, :cond_11

    iget-object v8, v2, Lg/gbi;->ew:[Lg/brh;

    aget-object v8, v8, v1

    move/from16 v24, v1

    iget v1, v8, Lg/brh;->aq:I

    if-eq v1, v3, :cond_10

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    :cond_10
    add-int/lit8 v1, v24, 0x1

    goto :goto_7

    :cond_11
    move v1, v7

    :cond_12
    move-object v3, v5

    iput-object v3, v2, Lg/dbr;->ej:[Lg/brh;

    iput v1, v2, Lg/dbr;->f:I

    iget v5, v2, Lg/dbr;->em:I

    if-eqz v5, :cond_6e

    const/4 v8, 0x1

    if-eq v5, v8, :cond_54

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    const/4 v7, 0x3

    if-eq v5, v7, :cond_13

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v20, v13

    move/from16 v33, v22

    move/from16 v34, v23

    :goto_8
    const/4 v12, 0x1

    const/16 v16, 0x0

    goto/16 :goto_3a

    :cond_13
    move-object v5, v3

    iget v3, v2, Lg/dbr;->ag:I

    if-nez v1, :cond_14

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v20, v13

    move/from16 v33, v22

    move/from16 v34, v23

    const/16 p3, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    move v7, v1

    new-instance v1, Lg/afu;

    move/from16 v21, v4

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    move-object/from16 v24, v5

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    move-object/from16 v25, v6

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    move/from16 v26, v7

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    move-object/from16 p3, v20

    move/from16 v20, v13

    move-object/from16 v13, p3

    move/from16 v35, v21

    move/from16 v33, v22

    move/from16 v34, v23

    move-object/from16 v36, v25

    move/from16 v8, v32

    const/16 p3, 0x1

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v14, v24

    move/from16 v15, v26

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v4, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    aget-object v0, v14, v4

    invoke-virtual {v2, v0, v8}, Lg/dbr;->es(Lg/brh;I)I

    move-result v21

    move/from16 p2, v3

    iget-object v3, v0, Lg/brh;->ch:[Lg/fol;

    const/16 v16, 0x0

    aget-object v3, v3, v16

    move/from16 v24, v4

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v3, v4, :cond_15

    add-int/lit8 v6, v6, 0x1

    :cond_15
    move/from16 v25, v6

    if-eq v7, v8, :cond_16

    iget v3, v2, Lg/dbr;->ab:I

    add-int/2addr v3, v7

    add-int v3, v3, v21

    if-le v3, v8, :cond_17

    :cond_16
    iget-object v3, v1, Lg/afu;->m:Lg/brh;

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_a

    :cond_17
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_18

    if-lez v24, :cond_18

    iget v4, v2, Lg/dbr;->o:I

    if-lez v4, :cond_18

    if-le v5, v4, :cond_18

    const/4 v3, 0x1

    :cond_18
    if-eqz v3, :cond_19

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    move/from16 v3, p2

    move/from16 v37, v12

    move/from16 v12, v24

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    iput v12, v1, Lg/afu;->d:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v21

    const/4 v5, 0x1

    goto :goto_b

    :cond_19
    move/from16 v3, p2

    move/from16 v37, v12

    move/from16 v12, v24

    if-lez v12, :cond_1a

    iget v4, v2, Lg/dbr;->ab:I

    add-int v4, v4, v21

    add-int/2addr v4, v7

    move v7, v4

    goto :goto_b

    :cond_1a
    move/from16 v7, v21

    :goto_b
    invoke-virtual {v1, v0}, Lg/afu;->u(Lg/brh;)V

    add-int/lit8 v4, v12, 0x1

    move/from16 v6, v25

    move/from16 v12, v37

    goto :goto_9

    :cond_1b
    move/from16 v37, v12

    goto/16 :goto_f

    :cond_1c
    move/from16 v37, v12

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    if-ge v0, v15, :cond_23

    add-int/lit8 v4, v4, 0x1

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lg/dbr;->et(Lg/brh;I)I

    move-result v21

    iget-object v7, v12, Lg/brh;->ch:[Lg/fol;

    aget-object v7, v7, p3

    move/from16 p2, v3

    sget-object v3, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v7, v3, :cond_1d

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    move/from16 v24, v5

    if-eq v6, v8, :cond_1e

    iget v3, v2, Lg/dbr;->w:I

    add-int/2addr v3, v6

    add-int v3, v3, v21

    if-le v3, v8, :cond_1f

    :cond_1e
    iget-object v3, v1, Lg/afu;->m:Lg/brh;

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_20

    if-lez v0, :cond_20

    iget v5, v2, Lg/dbr;->o:I

    if-lez v5, :cond_20

    if-le v4, v5, :cond_20

    const/4 v3, 0x1

    :cond_20
    if-eqz v3, :cond_21

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    iput v0, v1, Lg/afu;->d:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v21

    const/4 v4, 0x1

    goto :goto_e

    :cond_21
    move/from16 v3, p2

    if-lez v0, :cond_22

    iget v5, v2, Lg/dbr;->w:I

    add-int v5, v5, v21

    add-int/2addr v5, v6

    move v6, v5

    goto :goto_e

    :cond_22
    move/from16 v6, v21

    :goto_e
    invoke-virtual {v1, v12}, Lg/afu;->u(Lg/brh;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v24

    goto :goto_c

    :cond_23
    move v6, v5

    :goto_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lg/dbr;->aa:I

    iget v4, v2, Lg/dbr;->al:I

    iget v5, v2, Lg/dbr;->eo:I

    iget v7, v2, Lg/dbr;->n:I

    const/16 v16, 0x0

    aget-object v12, v22, v16

    sget-object v14, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v12, v14, :cond_25

    aget-object v12, v22, p3

    if-ne v12, v14, :cond_24

    goto :goto_10

    :cond_24
    const/4 v12, 0x0

    goto :goto_11

    :cond_25
    :goto_10
    const/4 v12, 0x1

    :goto_11
    if-lez v6, :cond_27

    if-eqz v12, :cond_27

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v0, :cond_27

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/afu;

    if-nez v3, :cond_26

    invoke-virtual {v12}, Lg/afu;->s()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lg/afu;->t(I)V

    goto :goto_13

    :cond_26
    invoke-virtual {v12}, Lg/afu;->x()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lg/afu;->t(I)V

    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_27
    move/from16 v28, v1

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v7

    move-object/from16 v24, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v25, v23

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v1, v0, :cond_2d

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/afu;

    if-nez v3, :cond_2a

    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_28

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/afu;

    iget-object v7, v7, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->bx:Lg/hac;

    move-object/from16 v27, v7

    const/16 v31, 0x0

    goto :goto_15

    :cond_28
    iget v7, v2, Lg/dbr;->n:I

    move/from16 v31, v7

    move-object/from16 v27, v19

    :goto_15
    iget-object v7, v6, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->as:Lg/hac;

    move/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v32, v8

    invoke-virtual/range {v22 .. v32}, Lg/afu;->v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V

    invoke-virtual {v6}, Lg/afu;->s()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v6}, Lg/afu;->x()I

    move-result v6

    add-int/2addr v6, v5

    if-lez v1, :cond_29

    iget v5, v2, Lg/dbr;->w:I

    add-int/2addr v6, v5

    :cond_29
    move v5, v6

    move-object/from16 v25, v7

    const/16 v29, 0x0

    goto :goto_17

    :cond_2a
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_2b

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/afu;

    iget-object v7, v7, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->cw:Lg/hac;

    move-object/from16 v26, v7

    const/16 v30, 0x0

    goto :goto_16

    :cond_2b
    iget v7, v2, Lg/dbr;->eo:I

    move/from16 v30, v7

    move-object/from16 v26, v18

    :goto_16
    iget-object v7, v6, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->br:Lg/hac;

    move/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v32, v8

    invoke-virtual/range {v22 .. v32}, Lg/afu;->v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V

    invoke-virtual/range {v22 .. v22}, Lg/afu;->s()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual/range {v22 .. v22}, Lg/afu;->x()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v1, :cond_2c

    iget v5, v2, Lg/dbr;->ab:I

    add-int/2addr v6, v5

    :cond_2c
    move v5, v4

    move v4, v6

    move-object/from16 v24, v7

    const/16 v28, 0x0

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_2d
    const/16 v16, 0x0

    aput v4, v36, v16

    aput v5, v36, p3

    goto/16 :goto_8

    :cond_2e
    move v15, v1

    move-object v14, v3

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v20, v13

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v8, v32

    const/16 p3, 0x1

    iget v0, v2, Lg/dbr;->ag:I

    if-nez v0, :cond_34

    iget v1, v2, Lg/dbr;->o:I

    if-gtz v1, :cond_33

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v1, v15, :cond_32

    if-lez v1, :cond_2f

    iget v5, v2, Lg/dbr;->ab:I

    add-int/2addr v3, v5

    :cond_2f
    aget-object v5, v14, v1

    if-nez v5, :cond_30

    goto :goto_19

    :cond_30
    invoke-virtual {v2, v5, v8}, Lg/dbr;->es(Lg/brh;I)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v8, :cond_31

    goto :goto_1a

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_32
    :goto_1a
    const/4 v1, 0x0

    goto :goto_1e

    :cond_33
    move v4, v1

    goto :goto_1a

    :cond_34
    iget v1, v2, Lg/dbr;->o:I

    if-gtz v1, :cond_39

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    if-ge v1, v15, :cond_38

    if-lez v1, :cond_35

    iget v5, v2, Lg/dbr;->w:I

    add-int/2addr v3, v5

    :cond_35
    aget-object v5, v14, v1

    if-nez v5, :cond_36

    goto :goto_1c

    :cond_36
    invoke-virtual {v2, v5, v8}, Lg/dbr;->et(Lg/brh;I)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v8, :cond_37

    goto :goto_1d

    :cond_37
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_38
    :goto_1d
    move v1, v4

    :cond_39
    const/4 v4, 0x0

    :goto_1e
    iget-object v3, v2, Lg/dbr;->s:[I

    if-nez v3, :cond_3a

    const/4 v7, 0x2

    new-array v3, v7, [I

    iput-object v3, v2, Lg/dbr;->s:[I

    :cond_3a
    if-nez v1, :cond_3b

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3c

    :cond_3b
    if-nez v4, :cond_3d

    if-nez v0, :cond_3d

    :cond_3c
    const/4 v3, 0x1

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x0

    :goto_1f
    if-nez v3, :cond_53

    if-nez v0, :cond_3e

    int-to-float v1, v15

    int-to-float v5, v4

    div-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_20

    :cond_3e
    int-to-float v4, v15

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_20
    iget-object v5, v2, Lg/dbr;->el:[Lg/brh;

    if-eqz v5, :cond_3f

    array-length v6, v5

    if-ge v6, v4, :cond_40

    :cond_3f
    const/4 v6, 0x0

    goto :goto_21

    :cond_40
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22

    :goto_21
    new-array v5, v4, [Lg/brh;

    iput-object v5, v2, Lg/dbr;->el:[Lg/brh;

    :goto_22
    iget-object v5, v2, Lg/dbr;->ae:[Lg/brh;

    if-eqz v5, :cond_42

    array-length v7, v5

    if-ge v7, v1, :cond_41

    goto :goto_23

    :cond_41
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_42
    :goto_23
    new-array v5, v1, [Lg/brh;

    iput-object v5, v2, Lg/dbr;->ae:[Lg/brh;

    :goto_24
    const/4 v5, 0x0

    :goto_25
    if-ge v5, v4, :cond_4b

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v1, :cond_4a

    mul-int v7, v6, v4

    add-int/2addr v7, v5

    const/4 v12, 0x1

    if-ne v0, v12, :cond_43

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    :cond_43
    array-length v12, v14

    if-lt v7, v12, :cond_44

    goto :goto_27

    :cond_44
    aget-object v7, v14, v7

    if-nez v7, :cond_45

    goto :goto_27

    :cond_45
    invoke-virtual {v2, v7, v8}, Lg/dbr;->es(Lg/brh;I)I

    move-result v12

    iget-object v13, v2, Lg/dbr;->el:[Lg/brh;

    aget-object v13, v13, v5

    if-eqz v13, :cond_46

    invoke-virtual {v13}, Lg/brh;->eb()I

    move-result v13

    if-ge v13, v12, :cond_47

    :cond_46
    iget-object v12, v2, Lg/dbr;->el:[Lg/brh;

    aput-object v7, v12, v5

    :cond_47
    invoke-virtual {v2, v7, v8}, Lg/dbr;->et(Lg/brh;I)I

    move-result v12

    iget-object v13, v2, Lg/dbr;->ae:[Lg/brh;

    aget-object v13, v13, v6

    if-eqz v13, :cond_48

    invoke-virtual {v13}, Lg/brh;->di()I

    move-result v13

    if-ge v13, v12, :cond_49

    :cond_48
    iget-object v12, v2, Lg/dbr;->ae:[Lg/brh;

    aput-object v7, v12, v6

    :cond_49
    :goto_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_4b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_28
    if-ge v5, v4, :cond_4e

    iget-object v7, v2, Lg/dbr;->el:[Lg/brh;

    aget-object v7, v7, v5

    if-eqz v7, :cond_4d

    if-lez v5, :cond_4c

    iget v12, v2, Lg/dbr;->ab:I

    add-int/2addr v6, v12

    :cond_4c
    invoke-virtual {v2, v7, v8}, Lg/dbr;->es(Lg/brh;I)I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_4e
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_29
    if-ge v5, v1, :cond_51

    iget-object v12, v2, Lg/dbr;->ae:[Lg/brh;

    aget-object v12, v12, v5

    if-eqz v12, :cond_50

    if-lez v5, :cond_4f

    iget v13, v2, Lg/dbr;->w:I

    add-int/2addr v7, v13

    :cond_4f
    invoke-virtual {v2, v12, v8}, Lg/dbr;->et(Lg/brh;I)I

    move-result v12

    add-int/2addr v12, v7

    move v7, v12

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_51
    const/16 v16, 0x0

    aput v6, v36, v16

    const/4 v5, 0x1

    aput v7, v36, v5

    if-nez v0, :cond_52

    if-le v6, v8, :cond_3c

    if-le v4, v5, :cond_3c

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1f

    :cond_52
    if-le v7, v8, :cond_3c

    if-le v1, v5, :cond_3c

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1f

    :cond_53
    const/4 v5, 0x1

    iget-object v0, v2, Lg/dbr;->s:[I

    const/16 v16, 0x0

    aput v4, v0, v16

    aput v1, v0, v5

    goto/16 :goto_8

    :cond_54
    move-object/from16 v8, v20

    move/from16 v20, v13

    move-object v13, v8

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v8, v32

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move v15, v1

    move-object v14, v3

    iget v3, v2, Lg/dbr;->ag:I

    if-nez v15, :cond_55

    goto/16 :goto_8

    :cond_55
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_5c

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2a
    if-ge v0, v15, :cond_63

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lg/dbr;->es(Lg/brh;I)I

    move-result v21

    iget-object v6, v12, Lg/brh;->ch:[Lg/fol;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v6, v7, :cond_56

    add-int/lit8 v4, v4, 0x1

    :cond_56
    move/from16 v24, v4

    if-eq v5, v8, :cond_57

    iget v4, v2, Lg/dbr;->ab:I

    add-int/2addr v4, v5

    add-int v4, v4, v21

    if-le v4, v8, :cond_58

    :cond_57
    iget-object v4, v1, Lg/afu;->m:Lg/brh;

    if-eqz v4, :cond_58

    const/4 v4, 0x1

    goto :goto_2b

    :cond_58
    const/4 v4, 0x0

    :goto_2b
    if-nez v4, :cond_59

    if-lez v0, :cond_59

    iget v6, v2, Lg/dbr;->o:I

    if-lez v6, :cond_59

    rem-int v6, v0, v6

    if-nez v6, :cond_59

    const/4 v4, 0x1

    :cond_59
    if-eqz v4, :cond_5b

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    iput v0, v1, Lg/afu;->d:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    move/from16 v5, v21

    goto :goto_2c

    :cond_5b
    if-lez v0, :cond_5a

    iget v4, v2, Lg/dbr;->ab:I

    add-int v4, v4, v21

    add-int/2addr v4, v5

    move v5, v4

    :goto_2c
    invoke-virtual {v1, v12}, Lg/afu;->u(Lg/brh;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v24

    goto :goto_2a

    :cond_5c
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2d
    if-ge v0, v15, :cond_63

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lg/dbr;->et(Lg/brh;I)I

    move-result v21

    iget-object v6, v12, Lg/brh;->ch:[Lg/fol;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v6, v7, :cond_5d

    add-int/lit8 v4, v4, 0x1

    :cond_5d
    move/from16 v24, v4

    if-eq v5, v8, :cond_5e

    iget v4, v2, Lg/dbr;->w:I

    add-int/2addr v4, v5

    add-int v4, v4, v21

    if-le v4, v8, :cond_5f

    :cond_5e
    iget-object v4, v1, Lg/afu;->m:Lg/brh;

    if-eqz v4, :cond_5f

    const/4 v4, 0x1

    goto :goto_2e

    :cond_5f
    const/4 v4, 0x0

    :goto_2e
    if-nez v4, :cond_60

    if-lez v0, :cond_60

    iget v6, v2, Lg/dbr;->o:I

    if-lez v6, :cond_60

    rem-int v6, v0, v6

    if-nez v6, :cond_60

    const/4 v4, 0x1

    :cond_60
    if-eqz v4, :cond_62

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    iput v0, v1, Lg/afu;->d:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    move/from16 v5, v21

    goto :goto_2f

    :cond_62
    if-lez v0, :cond_61

    iget v4, v2, Lg/dbr;->w:I

    add-int v4, v4, v21

    add-int/2addr v4, v5

    move v5, v4

    :goto_2f
    invoke-virtual {v1, v12}, Lg/afu;->u(Lg/brh;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v24

    goto :goto_2d

    :cond_63
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lg/dbr;->aa:I

    iget v5, v2, Lg/dbr;->al:I

    iget v6, v2, Lg/dbr;->eo:I

    iget v7, v2, Lg/dbr;->n:I

    const/16 v16, 0x0

    aget-object v12, v22, v16

    sget-object v14, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v12, v14, :cond_65

    const/4 v12, 0x1

    aget-object v15, v22, v12

    if-ne v15, v14, :cond_64

    goto :goto_30

    :cond_64
    const/4 v12, 0x0

    goto :goto_31

    :cond_65
    :goto_30
    const/4 v12, 0x1

    :goto_31
    if-lez v4, :cond_67

    if-eqz v12, :cond_67

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v0, :cond_67

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/afu;

    if-nez v3, :cond_66

    invoke-virtual {v12}, Lg/afu;->s()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lg/afu;->t(I)V

    goto :goto_33

    :cond_66
    invoke-virtual {v12}, Lg/afu;->x()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lg/afu;->t(I)V

    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_67
    move/from16 v28, v1

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move-object/from16 v24, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v25, v23

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_34
    if-ge v1, v0, :cond_6d

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/afu;

    if-nez v3, :cond_6a

    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_68

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/afu;

    iget-object v7, v7, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->bx:Lg/hac;

    move-object/from16 v27, v7

    const/16 v31, 0x0

    goto :goto_35

    :cond_68
    iget v7, v2, Lg/dbr;->n:I

    move/from16 v31, v7

    move-object/from16 v27, v19

    :goto_35
    iget-object v7, v6, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->as:Lg/hac;

    move/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v32, v8

    invoke-virtual/range {v22 .. v32}, Lg/afu;->v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V

    invoke-virtual {v6}, Lg/afu;->s()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v6}, Lg/afu;->x()I

    move-result v6

    add-int/2addr v6, v5

    if-lez v1, :cond_69

    iget v5, v2, Lg/dbr;->w:I

    add-int/2addr v6, v5

    :cond_69
    move v5, v6

    move-object/from16 v25, v7

    const/16 v29, 0x0

    goto :goto_37

    :cond_6a
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_6b

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/afu;

    iget-object v7, v7, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->cw:Lg/hac;

    move-object/from16 v26, v7

    const/16 v30, 0x0

    goto :goto_36

    :cond_6b
    iget v7, v2, Lg/dbr;->eo:I

    move/from16 v30, v7

    move-object/from16 v26, v18

    :goto_36
    iget-object v7, v6, Lg/afu;->m:Lg/brh;

    iget-object v7, v7, Lg/brh;->br:Lg/hac;

    move/from16 v23, v3

    move-object/from16 v22, v6

    move/from16 v32, v8

    invoke-virtual/range {v22 .. v32}, Lg/afu;->v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V

    invoke-virtual/range {v22 .. v22}, Lg/afu;->s()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual/range {v22 .. v22}, Lg/afu;->x()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v1, :cond_6c

    iget v5, v2, Lg/dbr;->ab:I

    add-int/2addr v6, v5

    :cond_6c
    move v5, v4

    move v4, v6

    move-object/from16 v24, v7

    const/16 v28, 0x0

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_34

    :cond_6d
    const/16 v16, 0x0

    aput v4, v36, v16

    const/4 v12, 0x1

    aput v5, v36, v12

    goto/16 :goto_8

    :cond_6e
    move-object/from16 v8, v20

    move/from16 v20, v13

    move-object v13, v8

    move v15, v1

    move-object v14, v3

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v8, v32

    iget v3, v2, Lg/dbr;->ag:I

    if-nez v15, :cond_6f

    goto/16 :goto_8

    :cond_6f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_70

    new-instance v1, Lg/afu;

    iget-object v4, v2, Lg/brh;->cw:Lg/hac;

    iget-object v5, v2, Lg/brh;->bx:Lg/hac;

    iget-object v6, v2, Lg/brh;->br:Lg/hac;

    iget-object v7, v2, Lg/brh;->as:Lg/hac;

    invoke-direct/range {v1 .. v8}, Lg/afu;-><init>(Lg/dbr;ILg/hac;Lg/hac;Lg/hac;Lg/hac;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_70
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/afu;

    iput v1, v0, Lg/afu;->p:I

    const/4 v6, 0x0

    iput-object v6, v0, Lg/afu;->m:Lg/brh;

    iput v1, v0, Lg/afu;->f:I

    iput v1, v0, Lg/afu;->k:I

    iput v1, v0, Lg/afu;->d:I

    iput v1, v0, Lg/afu;->c:I

    iput v1, v0, Lg/afu;->j:I

    iget-object v1, v2, Lg/brh;->cw:Lg/hac;

    iget-object v4, v2, Lg/brh;->bx:Lg/hac;

    iget-object v5, v2, Lg/brh;->br:Lg/hac;

    iget-object v6, v2, Lg/brh;->as:Lg/hac;

    iget v7, v2, Lg/dbr;->aa:I

    iget v12, v2, Lg/dbr;->al:I

    iget v13, v2, Lg/dbr;->eo:I

    move-object/from16 v22, v0

    iget v0, v2, Lg/dbr;->n:I

    move/from16 v31, v0

    move-object/from16 v24, v1

    move/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v29, v12

    move/from16 v30, v13

    invoke-virtual/range {v22 .. v32}, Lg/afu;->v(ILg/hac;Lg/hac;Lg/hac;Lg/hac;IIIII)V

    move-object/from16 v1, v22

    :goto_38
    const/4 v0, 0x0

    :goto_39
    if-ge v0, v15, :cond_71

    aget-object v3, v14, v0

    invoke-virtual {v1, v3}, Lg/afu;->u(Lg/brh;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_71
    invoke-virtual {v1}, Lg/afu;->s()I

    move-result v0

    const/16 v16, 0x0

    aput v0, v36, v16

    invoke-virtual {v1}, Lg/afu;->x()I

    move-result v0

    const/4 v12, 0x1

    aput v0, v36, v12

    :goto_3a
    aget v0, v36, v16

    add-int v0, v0, v20

    add-int v0, v0, v33

    aget v1, v36, v12

    add-int v1, v1, v34

    add-int v1, v1, v35

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v9, v4, :cond_72

    goto :goto_3b

    :cond_72
    if-ne v9, v3, :cond_73

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3b

    :cond_73
    if-nez v9, :cond_74

    move v10, v0

    goto :goto_3b

    :cond_74
    const/4 v10, 0x0

    :goto_3b
    if-ne v11, v4, :cond_75

    move/from16 v0, v37

    goto :goto_3c

    :cond_75
    if-ne v11, v3, :cond_76

    move/from16 v0, v37

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3c

    :cond_76
    if-nez v11, :cond_77

    move v0, v1

    goto :goto_3c

    :cond_77
    const/4 v0, 0x0

    :goto_3c
    iput v10, v2, Lg/dbr;->aj:I

    iput v0, v2, Lg/dbr;->t:I

    invoke-virtual {v2, v10}, Lg/brh;->ed(I)V

    invoke-virtual {v2, v0}, Lg/brh;->dj(I)V

    iget v0, v2, Lg/gbi;->ev:I

    if-lez v0, :cond_78

    const/4 v13, 0x1

    goto :goto_3d

    :cond_78
    const/4 v13, 0x0

    :goto_3d
    iput-boolean v13, v2, Lg/dbr;->u:Z

    :goto_3e
    iget v0, v2, Lg/dbr;->aj:I

    iget v1, v2, Lg/dbr;->t:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_79
    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->c(Lg/dbr;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->d:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->z:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->v:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ah:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ac:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->p:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ab:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ek:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->b:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->y:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->c:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ep:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->o:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->ag:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->al:I

    iput p1, v0, Lg/dbr;->n:I

    iput p1, v0, Lg/dbr;->en:I

    iput p1, v0, Lg/dbr;->eq:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->n:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->aa:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->eo:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->al:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->a:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->w:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->q:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Lg/dbr;

    iput p1, v0, Lg/dbr;->em:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
