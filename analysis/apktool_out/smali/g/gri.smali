.class public final Lg/gri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gri;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lg/gri;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static i(III)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final j(Lg/brh;Lg/dcu;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v3, v1, Lg/brh;->br:Lg/hac;

    iget-object v4, v1, Lg/brh;->cw:Lg/hac;

    iget v5, v1, Lg/brh;->aq:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    iput v7, v2, Lg/dcu;->c:I

    iput v7, v2, Lg/dcu;->e:I

    iput v7, v2, Lg/dcu;->j:I

    return-void

    :cond_1
    iget-object v5, v1, Lg/brh;->bj:Lg/brh;

    if-nez v5, :cond_2

    goto/16 :goto_11

    :cond_2
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Lg/ezi;

    iget-object v5, v2, Lg/dcu;->d:Lg/fol;

    iget-object v6, v2, Lg/dcu;->g:Lg/fol;

    iget v8, v2, Lg/dcu;->i:I

    iget v9, v2, Lg/dcu;->b:I

    iget v10, v0, Lg/gri;->f:I

    iget v11, v0, Lg/gri;->g:I

    add-int/2addr v10, v11

    iget v11, v0, Lg/gri;->b:I

    iget-object v12, v1, Lg/brh;->bh:Landroid/view/View;

    sget-object v13, Lg/hbx;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v13, v14

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-eq v14, v7, :cond_d

    if-eq v14, v15, :cond_c

    const/4 v8, 0x3

    if-eq v14, v8, :cond_9

    const/4 v8, 0x4

    if-eq v14, v8, :cond_3

    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    iget v8, v0, Lg/gri;->e:I

    const/4 v14, -0x2

    invoke-static {v8, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget v11, v1, Lg/brh;->da:I

    if-ne v11, v7, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    iget v14, v2, Lg/dcu;->h:I

    if-eq v14, v7, :cond_5

    if-ne v14, v15, :cond_e

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v7

    if-ne v14, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    iget v14, v2, Lg/dcu;->h:I

    if-eq v14, v15, :cond_8

    if-eqz v11, :cond_8

    if-eqz v11, :cond_7

    if-nez v7, :cond_8

    :cond_7
    invoke-virtual {v1}, Lg/brh;->i()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_8
    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_2
    move v8, v7

    goto :goto_4

    :cond_9
    iget v7, v0, Lg/gri;->e:I

    if-eqz v4, :cond_a

    iget v8, v4, Lg/hac;->i:I

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    if-eqz v3, :cond_b

    iget v14, v3, Lg/hac;->i:I

    add-int/2addr v8, v14

    :cond_b
    add-int/2addr v11, v8

    const/4 v8, -0x1

    invoke-static {v7, v11, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_2

    :cond_c
    iget v7, v0, Lg/gri;->e:I

    const/4 v14, -0x2

    invoke-static {v7, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_2

    :cond_d
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :cond_e
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v13, v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_19

    if-eq v7, v15, :cond_18

    const/4 v9, 0x3

    if-eq v7, v9, :cond_15

    const/4 v9, 0x4

    if-eq v7, v9, :cond_f

    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    iget v3, v0, Lg/gri;->h:I

    const/4 v14, -0x2

    invoke-static {v3, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v4, v1, Lg/brh;->by:I

    if-ne v4, v11, :cond_10

    const/4 v4, 0x1

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    :goto_5
    iget v7, v2, Lg/dcu;->h:I

    if-eq v7, v11, :cond_11

    if-ne v7, v15, :cond_1a

    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v9

    if-ne v7, v9, :cond_12

    const/4 v7, 0x1

    goto :goto_6

    :cond_12
    const/4 v7, 0x0

    :goto_6
    iget v9, v2, Lg/dcu;->h:I

    if-eq v9, v15, :cond_14

    if-eqz v4, :cond_14

    if-eqz v4, :cond_13

    if-nez v7, :cond_14

    :cond_13
    invoke-virtual {v1}, Lg/brh;->e()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_14
    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_8

    :cond_15
    iget v7, v0, Lg/gri;->h:I

    if-eqz v4, :cond_16

    iget-object v4, v1, Lg/brh;->bx:Lg/hac;

    iget v4, v4, Lg/hac;->i:I

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    :goto_7
    if-eqz v3, :cond_17

    iget-object v3, v1, Lg/brh;->as:Lg/hac;

    iget v3, v3, Lg/hac;->i:I

    add-int/2addr v4, v3

    :cond_17
    add-int/2addr v10, v4

    const/4 v3, -0x1

    invoke-static {v7, v10, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    move v3, v4

    goto :goto_8

    :cond_18
    iget v3, v0, Lg/gri;->h:I

    const/4 v14, -0x2

    invoke-static {v3, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_8

    :cond_19
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_1a
    :goto_8
    iget-object v4, v1, Lg/brh;->bj:Lg/brh;

    check-cast v4, Lg/aep;

    iget-object v7, v0, Lg/gri;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_1b

    iget v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/16 v10, 0x100

    invoke-static {v9, v10}, Lg/bff;->x(II)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v10

    if-ne v9, v10, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v4}, Lg/brh;->eb()I

    move-result v10

    if-ge v9, v10, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v10

    if-ne v9, v10, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v4}, Lg/brh;->di()I

    move-result v4

    if-ge v9, v4, :cond_1b

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v4

    iget v9, v1, Lg/brh;->bn:I

    if-ne v4, v9, :cond_1b

    invoke-virtual {v1}, Lg/brh;->dg()Z

    move-result v4

    if-nez v4, :cond_1b

    iget v4, v1, Lg/brh;->ba:I

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v9

    invoke-static {v4, v8, v9}, Lg/gri;->i(III)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget v4, v1, Lg/brh;->ar:I

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v9

    invoke-static {v4, v3, v9}, Lg/gri;->i(III)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v3

    iput v3, v2, Lg/dcu;->c:I

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v3

    iput v3, v2, Lg/dcu;->e:I

    iget v1, v1, Lg/brh;->bn:I

    iput v1, v2, Lg/dcu;->j:I

    return-void

    :cond_1b
    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v5, v4, :cond_1c

    const/4 v9, 0x1

    goto :goto_9

    :cond_1c
    const/4 v9, 0x0

    :goto_9
    if-ne v6, v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_a

    :cond_1d
    const/4 v4, 0x0

    :goto_a
    sget-object v10, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-eq v6, v10, :cond_1f

    sget-object v11, Lg/fol;->FIXED:Lg/fol;

    if-ne v6, v11, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v11, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    const/4 v11, 0x1

    :goto_c
    if-eq v5, v10, :cond_21

    sget-object v6, Lg/fol;->FIXED:Lg/fol;

    if-ne v5, v6, :cond_20

    goto :goto_d

    :cond_20
    const/4 v5, 0x0

    goto :goto_e

    :cond_21
    :goto_d
    const/4 v5, 0x1

    :goto_e
    const/4 v6, 0x0

    if-eqz v9, :cond_22

    iget v10, v1, Lg/brh;->bq:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_22

    const/4 v10, 0x1

    goto :goto_f

    :cond_22
    const/4 v10, 0x0

    :goto_f
    if-eqz v4, :cond_23

    iget v13, v1, Lg/brh;->bq:F

    cmpl-float v6, v13, v6

    if-lez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_10

    :cond_23
    const/4 v6, 0x0

    :goto_10
    if-nez v12, :cond_24

    :goto_11
    return-void

    :cond_24
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lg/dnk;

    iget v14, v2, Lg/dcu;->h:I

    const/4 v0, 0x1

    if-eq v14, v0, :cond_26

    if-eq v14, v15, :cond_26

    if-eqz v9, :cond_26

    iget v0, v1, Lg/brh;->da:I

    if-nez v0, :cond_26

    if-eqz v4, :cond_26

    iget v0, v1, Lg/brh;->by:I

    if-eqz v0, :cond_25

    goto :goto_12

    :cond_25
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1b

    :cond_26
    :goto_12
    instance-of v0, v12, Lg/gcr;

    if-eqz v0, :cond_27

    instance-of v0, v1, Lg/dbr;

    if-eqz v0, :cond_27

    move-object v0, v1

    check-cast v0, Lg/dbr;

    move-object v4, v12

    check-cast v4, Lg/gcr;

    invoke-virtual {v4, v0, v8, v3}, Lg/gcr;->c(Lg/dbr;II)V

    goto :goto_13

    :cond_27
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    :goto_13
    iput v8, v1, Lg/brh;->ba:I

    iput v3, v1, Lg/brh;->ar:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lg/brh;->cz:Z

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v9

    iget v14, v1, Lg/brh;->bl:I

    if-lez v14, :cond_28

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_14

    :cond_28
    move v14, v0

    :goto_14
    iget v15, v1, Lg/brh;->bs:I

    if-lez v15, :cond_29

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_29
    iget v15, v1, Lg/brh;->cy:I

    if-lez v15, :cond_2a

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_15
    move/from16 v16, v3

    goto :goto_16

    :cond_2a
    move v15, v4

    goto :goto_15

    :goto_16
    iget v3, v1, Lg/brh;->aw:I

    if-lez v3, :cond_2b

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_2b
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lg/bff;->x(II)Z

    move-result v3

    if-nez v3, :cond_2d

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v10, :cond_2c

    if-eqz v11, :cond_2c

    iget v5, v1, Lg/brh;->bq:F

    int-to-float v6, v15

    mul-float v6, v6, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    move v14, v3

    goto :goto_17

    :cond_2c
    if-eqz v6, :cond_2d

    if-eqz v5, :cond_2d

    iget v5, v1, Lg/brh;->bq:F

    int-to-float v6, v14

    div-float/2addr v6, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    move v15, v3

    :cond_2d
    :goto_17
    if-ne v0, v14, :cond_2f

    if-eq v4, v15, :cond_2e

    goto :goto_19

    :cond_2e
    move v5, v9

    const/4 v0, 0x0

    :goto_18
    const/4 v3, -0x1

    goto :goto_1b

    :cond_2f
    :goto_19
    const/high16 v7, 0x40000000    # 2.0f

    if-eq v0, v14, :cond_30

    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :cond_30
    if-eq v4, v15, :cond_31

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_1a

    :cond_31
    move/from16 v3, v16

    :goto_1a
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    iput v8, v1, Lg/brh;->ba:I

    iput v3, v1, Lg/brh;->ar:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lg/brh;->cz:Z

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v14, v3

    move v15, v4

    goto :goto_18

    :goto_1b
    if-eq v5, v3, :cond_32

    const/4 v11, 0x1

    goto :goto_1c

    :cond_32
    const/4 v11, 0x0

    :goto_1c
    iget v3, v2, Lg/dcu;->i:I

    if-ne v14, v3, :cond_34

    iget v3, v2, Lg/dcu;->b:I

    if-eq v15, v3, :cond_33

    goto :goto_1d

    :cond_33
    const/4 v7, 0x0

    goto :goto_1e

    :cond_34
    :goto_1d
    const/4 v7, 0x1

    :goto_1e
    iput-boolean v7, v2, Lg/dcu;->f:Z

    iget-boolean v0, v13, Lg/dnk;->p:Z

    if-eqz v0, :cond_35

    const/4 v11, 0x1

    :cond_35
    if-eqz v11, :cond_36

    const/4 v3, -0x1

    if-eq v5, v3, :cond_36

    iget v0, v1, Lg/brh;->bn:I

    if-eq v0, v5, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, v2, Lg/dcu;->f:Z

    :cond_36
    iput v14, v2, Lg/dcu;->c:I

    iput v15, v2, Lg/dcu;->e:I

    iput-boolean v11, v2, Lg/dcu;->a:Z

    iput v5, v2, Lg/dcu;->j:I

    return-void
.end method
