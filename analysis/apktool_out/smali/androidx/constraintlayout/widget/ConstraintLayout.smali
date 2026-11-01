.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static a:Lg/ezi;


# instance fields
.field public b:Z

.field public c:I

.field public final d:Lg/gri;

.field public e:Lg/ebt;

.field public final f:Lg/aep;

.field public g:I

.field public h:Lg/akj;

.field public i:I

.field public j:I

.field public final k:Landroid/util/SparseArray;

.field public l:I

.field public final m:Ljava/util/ArrayList;

.field public final n:Landroid/util/SparseArray;

.field public o:Ljava/util/HashMap;

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    new-instance p1, Lg/aep;

    invoke-direct {p1}, Lg/aep;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Lg/akj;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v0, Lg/gri;

    invoke-direct {v0, p0, p0}, Lg/gri;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lg/gri;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->u(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    new-instance p1, Lg/aep;

    invoke-direct {p1}, Lg/aep;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    const/16 p1, 0x101

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Lg/akj;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance p1, Lg/gri;

    invoke-direct {p1, p0, p0}, Lg/gri;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lg/gri;

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->u(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static getSharedValues()Lg/ezi;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Lg/ezi;

    if-nez v0, :cond_0

    new-instance v0, Lg/ezi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Lg/ezi;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Lg/ezi;

    return-object v0
.end method

.method public static q()Lg/dnk;
    .locals 8

    new-instance v0, Lg/dnk;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iput v1, v0, Lg/dnk;->y:I

    iput v1, v0, Lg/dnk;->au:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lg/dnk;->bf:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lg/dnk;->s:Z

    iput v1, v0, Lg/dnk;->w:I

    iput v1, v0, Lg/dnk;->aj:I

    iput v1, v0, Lg/dnk;->bn:I

    iput v1, v0, Lg/dnk;->c:I

    iput v1, v0, Lg/dnk;->as:I

    iput v1, v0, Lg/dnk;->ax:I

    iput v1, v0, Lg/dnk;->d:I

    iput v1, v0, Lg/dnk;->u:I

    iput v1, v0, Lg/dnk;->ao:I

    iput v1, v0, Lg/dnk;->r:I

    iput v1, v0, Lg/dnk;->j:I

    iput v1, v0, Lg/dnk;->an:I

    const/4 v4, 0x0

    iput v4, v0, Lg/dnk;->ay:I

    const/4 v5, 0x0

    iput v5, v0, Lg/dnk;->bo:F

    iput v1, v0, Lg/dnk;->am:I

    iput v1, v0, Lg/dnk;->ba:I

    iput v1, v0, Lg/dnk;->z:I

    iput v1, v0, Lg/dnk;->ag:I

    const/high16 v5, -0x80000000

    iput v5, v0, Lg/dnk;->ai:I

    iput v5, v0, Lg/dnk;->bm:I

    iput v5, v0, Lg/dnk;->k:I

    iput v5, v0, Lg/dnk;->a:I

    iput v5, v0, Lg/dnk;->az:I

    iput v5, v0, Lg/dnk;->t:I

    iput v5, v0, Lg/dnk;->ac:I

    iput v4, v0, Lg/dnk;->aa:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lg/dnk;->bl:F

    iput v6, v0, Lg/dnk;->bb:F

    const/4 v7, 0x0

    iput-object v7, v0, Lg/dnk;->o:Ljava/lang/String;

    iput v2, v0, Lg/dnk;->f:F

    iput v2, v0, Lg/dnk;->bk:F

    iput v4, v0, Lg/dnk;->al:I

    iput v4, v0, Lg/dnk;->af:I

    iput v4, v0, Lg/dnk;->g:I

    iput v4, v0, Lg/dnk;->ad:I

    iput v4, v0, Lg/dnk;->m:I

    iput v4, v0, Lg/dnk;->bc:I

    iput v4, v0, Lg/dnk;->ar:I

    iput v4, v0, Lg/dnk;->l:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lg/dnk;->aq:F

    iput v2, v0, Lg/dnk;->be:F

    iput v1, v0, Lg/dnk;->av:I

    iput v1, v0, Lg/dnk;->x:I

    iput v1, v0, Lg/dnk;->q:I

    iput-boolean v4, v0, Lg/dnk;->ah:Z

    iput-boolean v4, v0, Lg/dnk;->ae:Z

    iput-object v7, v0, Lg/dnk;->bp:Ljava/lang/String;

    iput v4, v0, Lg/dnk;->bj:I

    iput-boolean v3, v0, Lg/dnk;->ap:Z

    iput-boolean v3, v0, Lg/dnk;->ab:Z

    iput-boolean v4, v0, Lg/dnk;->p:Z

    iput-boolean v4, v0, Lg/dnk;->i:Z

    iput-boolean v4, v0, Lg/dnk;->bd:Z

    iput v1, v0, Lg/dnk;->bh:I

    iput v1, v0, Lg/dnk;->v:I

    iput v1, v0, Lg/dnk;->e:I

    iput v1, v0, Lg/dnk;->b:I

    iput v5, v0, Lg/dnk;->bg:I

    iput v5, v0, Lg/dnk;->ak:I

    iput v6, v0, Lg/dnk;->bi:F

    new-instance v1, Lg/brh;

    invoke-direct {v1}, Lg/brh;-><init>()V

    iput-object v1, v0, Lg/dnk;->aw:Lg/brh;

    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lg/dnk;

    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/atw;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v2

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v2

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v7

    int-to-float v12, v8

    add-int/2addr v7, v9

    int-to-float v13, v7

    move v14, v12

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v11

    add-int/2addr v8, v6

    int-to-float v14, v8

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v12

    move v12, v14

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v11

    move v11, v13

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v14

    move v14, v12

    move/from16 v12, v16

    const v6, -0xff0100

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v14

    move v14, v12

    move/from16 v12, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->q()Lg/dnk;

    move-result-object v0

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    new-instance v0, Lg/dnk;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, v0, Lg/dnk;->y:I

    iput v2, v0, Lg/dnk;->au:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lg/dnk;->bf:F

    const/4 v4, 0x1

    iput-boolean v4, v0, Lg/dnk;->s:Z

    iput v2, v0, Lg/dnk;->w:I

    iput v2, v0, Lg/dnk;->aj:I

    iput v2, v0, Lg/dnk;->bn:I

    iput v2, v0, Lg/dnk;->c:I

    iput v2, v0, Lg/dnk;->as:I

    iput v2, v0, Lg/dnk;->ax:I

    iput v2, v0, Lg/dnk;->d:I

    iput v2, v0, Lg/dnk;->u:I

    iput v2, v0, Lg/dnk;->ao:I

    iput v2, v0, Lg/dnk;->r:I

    iput v2, v0, Lg/dnk;->j:I

    iput v2, v0, Lg/dnk;->an:I

    const/4 v5, 0x0

    iput v5, v0, Lg/dnk;->ay:I

    const/4 v6, 0x0

    iput v6, v0, Lg/dnk;->bo:F

    iput v2, v0, Lg/dnk;->am:I

    iput v2, v0, Lg/dnk;->ba:I

    iput v2, v0, Lg/dnk;->z:I

    iput v2, v0, Lg/dnk;->ag:I

    const/high16 v7, -0x80000000

    iput v7, v0, Lg/dnk;->ai:I

    iput v7, v0, Lg/dnk;->bm:I

    iput v7, v0, Lg/dnk;->k:I

    iput v7, v0, Lg/dnk;->a:I

    iput v7, v0, Lg/dnk;->az:I

    iput v7, v0, Lg/dnk;->t:I

    iput v7, v0, Lg/dnk;->ac:I

    iput v5, v0, Lg/dnk;->aa:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Lg/dnk;->bl:F

    iput v8, v0, Lg/dnk;->bb:F

    const/4 v9, 0x0

    iput-object v9, v0, Lg/dnk;->o:Ljava/lang/String;

    iput v3, v0, Lg/dnk;->f:F

    iput v3, v0, Lg/dnk;->bk:F

    iput v5, v0, Lg/dnk;->al:I

    iput v5, v0, Lg/dnk;->af:I

    iput v5, v0, Lg/dnk;->g:I

    iput v5, v0, Lg/dnk;->ad:I

    iput v5, v0, Lg/dnk;->m:I

    iput v5, v0, Lg/dnk;->bc:I

    iput v5, v0, Lg/dnk;->ar:I

    iput v5, v0, Lg/dnk;->l:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lg/dnk;->aq:F

    iput v3, v0, Lg/dnk;->be:F

    iput v2, v0, Lg/dnk;->av:I

    iput v2, v0, Lg/dnk;->x:I

    iput v2, v0, Lg/dnk;->q:I

    iput-boolean v5, v0, Lg/dnk;->ah:Z

    iput-boolean v5, v0, Lg/dnk;->ae:Z

    iput-object v9, v0, Lg/dnk;->bp:Ljava/lang/String;

    iput v5, v0, Lg/dnk;->bj:I

    iput-boolean v4, v0, Lg/dnk;->ap:Z

    iput-boolean v4, v0, Lg/dnk;->ab:Z

    iput-boolean v5, v0, Lg/dnk;->p:Z

    iput-boolean v5, v0, Lg/dnk;->i:Z

    iput-boolean v5, v0, Lg/dnk;->bd:Z

    iput v2, v0, Lg/dnk;->bh:I

    iput v2, v0, Lg/dnk;->v:I

    iput v2, v0, Lg/dnk;->e:I

    iput v2, v0, Lg/dnk;->b:I

    iput v7, v0, Lg/dnk;->bg:I

    iput v7, v0, Lg/dnk;->ak:I

    iput v8, v0, Lg/dnk;->bi:F

    new-instance v3, Lg/brh;

    invoke-direct {v3}, Lg/brh;-><init>()V

    iput-object v3, v0, Lg/dnk;->aw:Lg/brh;

    sget-object v3, Lg/bfv;->g:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    sget-object v8, Lg/gbx;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v8, v0, Lg/dnk;->s:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lg/dnk;->s:Z

    goto/16 :goto_1

    :pswitch_1
    iget v8, v0, Lg/dnk;->bj:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->bj:I

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v0, p1, v7, v4}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v0, p1, v7, v5}, Lg/ebt;->j(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_4
    iget v8, v0, Lg/dnk;->ac:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ac:I

    goto/16 :goto_1

    :pswitch_5
    iget v8, v0, Lg/dnk;->aa:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->aa:I

    goto/16 :goto_1

    :pswitch_6
    iget v8, v0, Lg/dnk;->j:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->j:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->j:I

    goto/16 :goto_1

    :pswitch_7
    iget v8, v0, Lg/dnk;->r:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->r:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->r:I

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lg/dnk;->bp:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget v8, v0, Lg/dnk;->x:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->x:I

    goto/16 :goto_1

    :pswitch_a
    iget v8, v0, Lg/dnk;->av:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->av:I

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->af:I

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->al:I

    goto/16 :goto_1

    :pswitch_d
    iget v8, v0, Lg/dnk;->bk:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lg/dnk;->bk:F

    goto/16 :goto_1

    :pswitch_e
    iget v8, v0, Lg/dnk;->f:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lg/dnk;->f:F

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lg/ebt;->k(Lg/dnk;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    iget v8, v0, Lg/dnk;->be:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lg/dnk;->be:F

    iput v10, v0, Lg/dnk;->ad:I

    goto/16 :goto_1

    :pswitch_11
    :try_start_0
    iget v8, v0, Lg/dnk;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    nop

    iget v8, v0, Lg/dnk;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Lg/dnk;->l:I

    goto/16 :goto_1

    :pswitch_12
    :try_start_1
    iget v8, v0, Lg/dnk;->bc:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->bc:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    nop

    iget v8, v0, Lg/dnk;->bc:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Lg/dnk;->bc:I

    goto/16 :goto_1

    :pswitch_13
    iget v8, v0, Lg/dnk;->aq:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lg/dnk;->aq:F

    iput v10, v0, Lg/dnk;->g:I

    goto/16 :goto_1

    :pswitch_14
    :try_start_2
    iget v8, v0, Lg/dnk;->ar:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->ar:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    nop

    iget v8, v0, Lg/dnk;->ar:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Lg/dnk;->ar:I

    goto/16 :goto_1

    :pswitch_15
    :try_start_3
    iget v8, v0, Lg/dnk;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->m:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    nop

    iget v8, v0, Lg/dnk;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Lg/dnk;->m:I

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ad:I

    if-ne v7, v4, :cond_0

    const-string v7, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->g:I

    if-ne v7, v4, :cond_0

    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_18
    iget v8, v0, Lg/dnk;->bb:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lg/dnk;->bb:F

    goto/16 :goto_1

    :pswitch_19
    iget v8, v0, Lg/dnk;->bl:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lg/dnk;->bl:F

    goto/16 :goto_1

    :pswitch_1a
    iget-boolean v8, v0, Lg/dnk;->ae:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lg/dnk;->ae:Z

    goto/16 :goto_1

    :pswitch_1b
    iget-boolean v8, v0, Lg/dnk;->ah:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lg/dnk;->ah:Z

    goto/16 :goto_1

    :pswitch_1c
    iget v8, v0, Lg/dnk;->t:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->t:I

    goto/16 :goto_1

    :pswitch_1d
    iget v8, v0, Lg/dnk;->az:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->az:I

    goto/16 :goto_1

    :pswitch_1e
    iget v8, v0, Lg/dnk;->a:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->a:I

    goto/16 :goto_1

    :pswitch_1f
    iget v8, v0, Lg/dnk;->k:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->k:I

    goto/16 :goto_1

    :pswitch_20
    iget v8, v0, Lg/dnk;->bm:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->bm:I

    goto/16 :goto_1

    :pswitch_21
    iget v8, v0, Lg/dnk;->ai:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ai:I

    goto/16 :goto_1

    :pswitch_22
    iget v8, v0, Lg/dnk;->ag:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->ag:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ag:I

    goto/16 :goto_1

    :pswitch_23
    iget v8, v0, Lg/dnk;->z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->z:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->z:I

    goto/16 :goto_1

    :pswitch_24
    iget v8, v0, Lg/dnk;->ba:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->ba:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ba:I

    goto/16 :goto_1

    :pswitch_25
    iget v8, v0, Lg/dnk;->am:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->am:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->am:I

    goto/16 :goto_1

    :pswitch_26
    iget v8, v0, Lg/dnk;->ao:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->ao:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ao:I

    goto/16 :goto_1

    :pswitch_27
    iget v8, v0, Lg/dnk;->u:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->u:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->u:I

    goto/16 :goto_1

    :pswitch_28
    iget v8, v0, Lg/dnk;->d:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->d:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->d:I

    goto/16 :goto_1

    :pswitch_29
    iget v8, v0, Lg/dnk;->ax:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->ax:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ax:I

    goto/16 :goto_1

    :pswitch_2a
    iget v8, v0, Lg/dnk;->as:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->as:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->as:I

    goto/16 :goto_1

    :pswitch_2b
    iget v8, v0, Lg/dnk;->c:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->c:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->c:I

    goto/16 :goto_1

    :pswitch_2c
    iget v8, v0, Lg/dnk;->bn:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->bn:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->bn:I

    goto/16 :goto_1

    :pswitch_2d
    iget v8, v0, Lg/dnk;->aj:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->aj:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->aj:I

    goto :goto_1

    :pswitch_2e
    iget v8, v0, Lg/dnk;->w:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->w:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->w:I

    goto :goto_1

    :pswitch_2f
    iget v8, v0, Lg/dnk;->bf:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lg/dnk;->bf:F

    goto :goto_1

    :pswitch_30
    iget v8, v0, Lg/dnk;->au:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->au:I

    goto :goto_1

    :pswitch_31
    iget v8, v0, Lg/dnk;->y:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->y:I

    goto :goto_1

    :pswitch_32
    iget v8, v0, Lg/dnk;->bo:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    iput v7, v0, Lg/dnk;->bo:F

    cmpg-float v9, v7, v6

    if-gez v9, :cond_0

    sub-float v7, v8, v7

    rem-float/2addr v7, v8

    iput v7, v0, Lg/dnk;->bo:F

    goto :goto_1

    :pswitch_33
    iget v8, v0, Lg/dnk;->ay:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->ay:I

    goto :goto_1

    :pswitch_34
    iget v8, v0, Lg/dnk;->an:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lg/dnk;->an:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->an:I

    goto :goto_1

    :pswitch_35
    iget v8, v0, Lg/dnk;->q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lg/dnk;->q:I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lg/dnk;->bq()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    new-instance v0, Lg/dnk;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, -0x1

    iput v1, v0, Lg/dnk;->y:I

    iput v1, v0, Lg/dnk;->au:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lg/dnk;->bf:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lg/dnk;->s:Z

    iput v1, v0, Lg/dnk;->w:I

    iput v1, v0, Lg/dnk;->aj:I

    iput v1, v0, Lg/dnk;->bn:I

    iput v1, v0, Lg/dnk;->c:I

    iput v1, v0, Lg/dnk;->as:I

    iput v1, v0, Lg/dnk;->ax:I

    iput v1, v0, Lg/dnk;->d:I

    iput v1, v0, Lg/dnk;->u:I

    iput v1, v0, Lg/dnk;->ao:I

    iput v1, v0, Lg/dnk;->r:I

    iput v1, v0, Lg/dnk;->j:I

    iput v1, v0, Lg/dnk;->an:I

    const/4 v4, 0x0

    iput v4, v0, Lg/dnk;->ay:I

    const/4 v5, 0x0

    iput v5, v0, Lg/dnk;->bo:F

    iput v1, v0, Lg/dnk;->am:I

    iput v1, v0, Lg/dnk;->ba:I

    iput v1, v0, Lg/dnk;->z:I

    iput v1, v0, Lg/dnk;->ag:I

    const/high16 v5, -0x80000000

    iput v5, v0, Lg/dnk;->ai:I

    iput v5, v0, Lg/dnk;->bm:I

    iput v5, v0, Lg/dnk;->k:I

    iput v5, v0, Lg/dnk;->a:I

    iput v5, v0, Lg/dnk;->az:I

    iput v5, v0, Lg/dnk;->t:I

    iput v5, v0, Lg/dnk;->ac:I

    iput v4, v0, Lg/dnk;->aa:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lg/dnk;->bl:F

    iput v6, v0, Lg/dnk;->bb:F

    const/4 v7, 0x0

    iput-object v7, v0, Lg/dnk;->o:Ljava/lang/String;

    iput v2, v0, Lg/dnk;->f:F

    iput v2, v0, Lg/dnk;->bk:F

    iput v4, v0, Lg/dnk;->al:I

    iput v4, v0, Lg/dnk;->af:I

    iput v4, v0, Lg/dnk;->g:I

    iput v4, v0, Lg/dnk;->ad:I

    iput v4, v0, Lg/dnk;->m:I

    iput v4, v0, Lg/dnk;->bc:I

    iput v4, v0, Lg/dnk;->ar:I

    iput v4, v0, Lg/dnk;->l:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lg/dnk;->aq:F

    iput v2, v0, Lg/dnk;->be:F

    iput v1, v0, Lg/dnk;->av:I

    iput v1, v0, Lg/dnk;->x:I

    iput v1, v0, Lg/dnk;->q:I

    iput-boolean v4, v0, Lg/dnk;->ah:Z

    iput-boolean v4, v0, Lg/dnk;->ae:Z

    iput-object v7, v0, Lg/dnk;->bp:Ljava/lang/String;

    iput v4, v0, Lg/dnk;->bj:I

    iput-boolean v3, v0, Lg/dnk;->ap:Z

    iput-boolean v3, v0, Lg/dnk;->ab:Z

    iput-boolean v4, v0, Lg/dnk;->p:Z

    iput-boolean v4, v0, Lg/dnk;->i:Z

    iput-boolean v4, v0, Lg/dnk;->bd:Z

    iput v1, v0, Lg/dnk;->bh:I

    iput v1, v0, Lg/dnk;->v:I

    iput v1, v0, Lg/dnk;->e:I

    iput v1, v0, Lg/dnk;->b:I

    iput v5, v0, Lg/dnk;->bg:I

    iput v5, v0, Lg/dnk;->ak:I

    iput v6, v0, Lg/dnk;->bi:F

    new-instance v1, Lg/brh;

    invoke-direct {v1}, Lg/brh;-><init>()V

    iput-object v1, v0, Lg/dnk;->aw:Lg/brh;

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    instance-of v1, p1, Lg/dnk;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Lg/dnk;

    iget v1, p1, Lg/dnk;->y:I

    iput v1, v0, Lg/dnk;->y:I

    iget v1, p1, Lg/dnk;->au:I

    iput v1, v0, Lg/dnk;->au:I

    iget v1, p1, Lg/dnk;->bf:F

    iput v1, v0, Lg/dnk;->bf:F

    iget-boolean v1, p1, Lg/dnk;->s:Z

    iput-boolean v1, v0, Lg/dnk;->s:Z

    iget v1, p1, Lg/dnk;->w:I

    iput v1, v0, Lg/dnk;->w:I

    iget v1, p1, Lg/dnk;->aj:I

    iput v1, v0, Lg/dnk;->aj:I

    iget v1, p1, Lg/dnk;->bn:I

    iput v1, v0, Lg/dnk;->bn:I

    iget v1, p1, Lg/dnk;->c:I

    iput v1, v0, Lg/dnk;->c:I

    iget v1, p1, Lg/dnk;->as:I

    iput v1, v0, Lg/dnk;->as:I

    iget v1, p1, Lg/dnk;->ax:I

    iput v1, v0, Lg/dnk;->ax:I

    iget v1, p1, Lg/dnk;->d:I

    iput v1, v0, Lg/dnk;->d:I

    iget v1, p1, Lg/dnk;->u:I

    iput v1, v0, Lg/dnk;->u:I

    iget v1, p1, Lg/dnk;->ao:I

    iput v1, v0, Lg/dnk;->ao:I

    iget v1, p1, Lg/dnk;->r:I

    iput v1, v0, Lg/dnk;->r:I

    iget v1, p1, Lg/dnk;->j:I

    iput v1, v0, Lg/dnk;->j:I

    iget v1, p1, Lg/dnk;->an:I

    iput v1, v0, Lg/dnk;->an:I

    iget v1, p1, Lg/dnk;->ay:I

    iput v1, v0, Lg/dnk;->ay:I

    iget v1, p1, Lg/dnk;->bo:F

    iput v1, v0, Lg/dnk;->bo:F

    iget v1, p1, Lg/dnk;->am:I

    iput v1, v0, Lg/dnk;->am:I

    iget v1, p1, Lg/dnk;->ba:I

    iput v1, v0, Lg/dnk;->ba:I

    iget v1, p1, Lg/dnk;->z:I

    iput v1, v0, Lg/dnk;->z:I

    iget v1, p1, Lg/dnk;->ag:I

    iput v1, v0, Lg/dnk;->ag:I

    iget v1, p1, Lg/dnk;->ai:I

    iput v1, v0, Lg/dnk;->ai:I

    iget v1, p1, Lg/dnk;->bm:I

    iput v1, v0, Lg/dnk;->bm:I

    iget v1, p1, Lg/dnk;->k:I

    iput v1, v0, Lg/dnk;->k:I

    iget v1, p1, Lg/dnk;->a:I

    iput v1, v0, Lg/dnk;->a:I

    iget v1, p1, Lg/dnk;->az:I

    iput v1, v0, Lg/dnk;->az:I

    iget v1, p1, Lg/dnk;->t:I

    iput v1, v0, Lg/dnk;->t:I

    iget v1, p1, Lg/dnk;->ac:I

    iput v1, v0, Lg/dnk;->ac:I

    iget v1, p1, Lg/dnk;->aa:I

    iput v1, v0, Lg/dnk;->aa:I

    iget v1, p1, Lg/dnk;->bl:F

    iput v1, v0, Lg/dnk;->bl:F

    iget v1, p1, Lg/dnk;->bb:F

    iput v1, v0, Lg/dnk;->bb:F

    iget-object v1, p1, Lg/dnk;->o:Ljava/lang/String;

    iput-object v1, v0, Lg/dnk;->o:Ljava/lang/String;

    iget v1, p1, Lg/dnk;->f:F

    iput v1, v0, Lg/dnk;->f:F

    iget v1, p1, Lg/dnk;->bk:F

    iput v1, v0, Lg/dnk;->bk:F

    iget v1, p1, Lg/dnk;->al:I

    iput v1, v0, Lg/dnk;->al:I

    iget v1, p1, Lg/dnk;->af:I

    iput v1, v0, Lg/dnk;->af:I

    iget-boolean v1, p1, Lg/dnk;->ah:Z

    iput-boolean v1, v0, Lg/dnk;->ah:Z

    iget-boolean v1, p1, Lg/dnk;->ae:Z

    iput-boolean v1, v0, Lg/dnk;->ae:Z

    iget v1, p1, Lg/dnk;->g:I

    iput v1, v0, Lg/dnk;->g:I

    iget v1, p1, Lg/dnk;->ad:I

    iput v1, v0, Lg/dnk;->ad:I

    iget v1, p1, Lg/dnk;->m:I

    iput v1, v0, Lg/dnk;->m:I

    iget v1, p1, Lg/dnk;->ar:I

    iput v1, v0, Lg/dnk;->ar:I

    iget v1, p1, Lg/dnk;->bc:I

    iput v1, v0, Lg/dnk;->bc:I

    iget v1, p1, Lg/dnk;->l:I

    iput v1, v0, Lg/dnk;->l:I

    iget v1, p1, Lg/dnk;->aq:F

    iput v1, v0, Lg/dnk;->aq:F

    iget v1, p1, Lg/dnk;->be:F

    iput v1, v0, Lg/dnk;->be:F

    iget v1, p1, Lg/dnk;->av:I

    iput v1, v0, Lg/dnk;->av:I

    iget v1, p1, Lg/dnk;->x:I

    iput v1, v0, Lg/dnk;->x:I

    iget v1, p1, Lg/dnk;->q:I

    iput v1, v0, Lg/dnk;->q:I

    iget-boolean v1, p1, Lg/dnk;->ap:Z

    iput-boolean v1, v0, Lg/dnk;->ap:Z

    iget-boolean v1, p1, Lg/dnk;->ab:Z

    iput-boolean v1, v0, Lg/dnk;->ab:Z

    iget-boolean v1, p1, Lg/dnk;->p:Z

    iput-boolean v1, v0, Lg/dnk;->p:Z

    iget-boolean v1, p1, Lg/dnk;->i:Z

    iput-boolean v1, v0, Lg/dnk;->i:Z

    iget v1, p1, Lg/dnk;->bh:I

    iput v1, v0, Lg/dnk;->bh:I

    iget v1, p1, Lg/dnk;->v:I

    iput v1, v0, Lg/dnk;->v:I

    iget v1, p1, Lg/dnk;->e:I

    iput v1, v0, Lg/dnk;->e:I

    iget v1, p1, Lg/dnk;->b:I

    iput v1, v0, Lg/dnk;->b:I

    iget v1, p1, Lg/dnk;->bg:I

    iput v1, v0, Lg/dnk;->bg:I

    iget v1, p1, Lg/dnk;->ak:I

    iput v1, v0, Lg/dnk;->ak:I

    iget v1, p1, Lg/dnk;->bi:F

    iput v1, v0, Lg/dnk;->bi:F

    iget-object v1, p1, Lg/dnk;->bp:Ljava/lang/String;

    iput-object v1, v0, Lg/dnk;->bp:Ljava/lang/String;

    iget v1, p1, Lg/dnk;->bj:I

    iput v1, v0, Lg/dnk;->bj:I

    iget-object p1, p1, Lg/dnk;->aw:Lg/brh;

    iput-object p1, v0, Lg/dnk;->aw:Lg/brh;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iget v0, v0, Lg/aep;->w:I

    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iget-object v2, v1, Lg/brh;->cj:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/brh;->cj:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "parent"

    iput-object v2, v1, Lg/brh;->cj:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, v1, Lg/brh;->an:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Lg/brh;->cj:Ljava/lang/String;

    iput-object v2, v1, Lg/brh;->an:Ljava/lang/String;

    :cond_2
    iget-object v2, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/brh;

    iget-object v5, v4, Lg/brh;->bh:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v6, v4, Lg/brh;->cj:Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lg/brh;->cj:Ljava/lang/String;

    :cond_4
    iget-object v5, v4, Lg/brh;->an:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v4, Lg/brh;->cj:Ljava/lang/String;

    iput-object v5, v4, Lg/brh;->an:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Lg/aep;->ad(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/dnk;

    iget-object v1, v0, Lg/dnk;->aw:Lg/brh;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lg/dnk;->i:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lg/dnk;->bd:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lg/brh;->ei()I

    move-result v0

    invoke-virtual {v1}, Lg/brh;->dy()I

    move-result v2

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    :goto_2
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/atw;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v8, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iput-boolean v1, v10, Lg/aep;->ab:Z

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    if-eqz v1, :cond_4d

    iput-boolean v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_4c

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lg/brh;->af()V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    const/4 v14, -0x1

    if-eqz v12, :cond_10

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v13, :cond_10

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_7

    const/4 v15, 0x1

    goto :goto_8

    :cond_7
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_a

    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-nez v15, :cond_8

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    :cond_8
    const-string v15, "/"

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v14, :cond_9

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    const/16 v16, 0x1

    goto :goto_a

    :catch_0
    const/16 v16, 0x1

    goto :goto_e

    :cond_9
    move-object v15, v4

    goto :goto_9

    :goto_a
    :try_start_1
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-virtual {v8, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/16 v16, 0x1

    :goto_b
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v14, :cond_b

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-nez v3, :cond_c

    :goto_c
    move-object v3, v10

    goto :goto_d

    :cond_c
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    if-eq v5, v0, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, v0, :cond_d

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_d
    if-ne v5, v0, :cond_e

    goto :goto_c

    :cond_e
    if-nez v5, :cond_f

    move-object v3, v1

    goto :goto_d

    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lg/dnk;

    iget-object v3, v3, Lg/dnk;->aw:Lg/brh;

    :goto_d
    iput-object v4, v3, Lg/brh;->an:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_e
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_10
    const/16 v16, 0x1

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-eq v2, v14, :cond_11

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v13, :cond_11

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_11
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v0}, Lg/ebt;->m(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_12
    iget-object v2, v10, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/atw;

    iget-object v15, v5, Lg/atw;->d:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x2

    iget-object v8, v5, Lg/atw;->g:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lg/atw;->setIds(Ljava/lang/String;)V

    goto :goto_11

    :cond_13
    const/16 v17, 0x2

    :goto_11
    iget-object v8, v5, Lg/atw;->f:Lg/gbi;

    if-nez v8, :cond_14

    move-object/from16 v20, v2

    move/from16 v21, v3

    goto/16 :goto_15

    :cond_14
    iput v9, v8, Lg/gbi;->ev:I

    iget-object v8, v8, Lg/gbi;->ew:[Lg/brh;

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_12
    iget v1, v5, Lg/atw;->i:I

    if-ge v8, v1, :cond_19

    iget-object v1, v5, Lg/atw;->h:[I

    aget v1, v1, v8

    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-nez v14, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lg/atw;->n(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_15

    iget-object v14, v5, Lg/atw;->h:[I

    aput v9, v14, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/View;

    :cond_15
    if-eqz v14, :cond_18

    iget-object v1, v5, Lg/atw;->f:Lg/gbi;

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v1, :cond_18

    if-nez v9, :cond_16

    goto :goto_13

    :cond_16
    iget v14, v1, Lg/gbi;->ev:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v2

    iget-object v2, v1, Lg/gbi;->ew:[Lg/brh;

    move/from16 v21, v3

    array-length v3, v2

    if-le v14, v3, :cond_17

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lg/brh;

    iput-object v2, v1, Lg/gbi;->ew:[Lg/brh;

    :cond_17
    iget-object v2, v1, Lg/gbi;->ew:[Lg/brh;

    iget v3, v1, Lg/gbi;->ev:I

    aput-object v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/gbi;->ev:I

    goto :goto_14

    :cond_18
    :goto_13
    move-object/from16 v20, v2

    move/from16 v21, v3

    :goto_14
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v20

    move/from16 v3, v21

    const/4 v9, 0x0

    const/4 v14, -0x1

    goto :goto_12

    :cond_19
    move-object/from16 v20, v2

    move/from16 v21, v3

    iget-object v1, v5, Lg/atw;->f:Lg/gbi;

    invoke-virtual {v1}, Lg/gbi;->eu()V

    :goto_15
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    move/from16 v3, v21

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v14, -0x1

    goto/16 :goto_10

    :cond_1a
    const/16 v17, 0x2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v13, :cond_1b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1b
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v13, :cond_1c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1c
    const/4 v8, 0x0

    :goto_18
    if-ge v8, v13, :cond_4c

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v2

    if-nez v2, :cond_1e

    :cond_1d
    :goto_19
    move/from16 v18, v8

    move/from16 v27, v11

    const/4 v4, 0x2

    const/4 v11, -0x1

    goto/16 :goto_2a

    :cond_1e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg/dnk;

    iget-object v5, v10, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lg/brh;->bj:Lg/brh;

    if-eqz v5, :cond_1f

    check-cast v5, Lg/aep;

    iget-object v5, v5, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lg/brh;->af()V

    :cond_1f
    iput-object v10, v2, Lg/brh;->bj:Lg/brh;

    invoke-virtual {v4}, Lg/dnk;->bq()V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    iput v5, v2, Lg/brh;->aq:I

    iput-object v1, v2, Lg/brh;->bh:Landroid/view/View;

    instance-of v5, v1, Lg/atw;

    if-eqz v5, :cond_20

    check-cast v1, Lg/atw;

    iget-boolean v5, v10, Lg/aep;->ab:Z

    invoke-virtual {v1, v2, v5}, Lg/atw;->b(Lg/brh;Z)V

    :cond_20
    iget-boolean v1, v4, Lg/dnk;->i:Z

    if-eqz v1, :cond_23

    check-cast v2, Lg/aar;

    iget v1, v4, Lg/dnk;->h:I

    iget v5, v4, Lg/dnk;->at:I

    iget v4, v4, Lg/dnk;->n:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v14, v4, v9

    if-eqz v14, :cond_21

    if-lez v14, :cond_1d

    iput v4, v2, Lg/aar;->d:F

    const/4 v4, -0x1

    iput v4, v2, Lg/aar;->a:I

    iput v4, v2, Lg/aar;->c:I

    goto :goto_19

    :cond_21
    const/4 v4, -0x1

    if-eq v1, v4, :cond_22

    if-le v1, v4, :cond_1d

    iput v9, v2, Lg/aar;->d:F

    iput v1, v2, Lg/aar;->a:I

    iput v4, v2, Lg/aar;->c:I

    goto :goto_19

    :cond_22
    if-eq v5, v4, :cond_1d

    if-le v5, v4, :cond_1d

    iput v9, v2, Lg/aar;->d:F

    iput v4, v2, Lg/aar;->a:I

    iput v5, v2, Lg/aar;->c:I

    goto :goto_19

    :cond_23
    iget v1, v4, Lg/dnk;->bh:I

    iget v5, v4, Lg/dnk;->v:I

    iget v9, v4, Lg/dnk;->e:I

    iget v14, v4, Lg/dnk;->b:I

    iget v15, v4, Lg/dnk;->bg:I

    iget v0, v4, Lg/dnk;->ak:I

    move/from16 v18, v8

    iget v8, v4, Lg/dnk;->bi:F

    move/from16 v26, v0

    iget v0, v4, Lg/dnk;->an:I

    move/from16 v27, v11

    const/4 v11, -0x1

    const/16 v28, 0x0

    if-eq v0, v11, :cond_25

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_24

    iget v0, v4, Lg/dnk;->bo:F

    iget v1, v4, Lg/dnk;->ay:I

    sget-object v21, Lg/dih;->CENTER:Lg/dih;

    const/16 v25, 0x0

    move-object/from16 v23, v21

    move/from16 v24, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    iput v0, v2, Lg/brh;->bm:F

    :cond_24
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_20

    :cond_25
    if-eq v1, v11, :cond_27

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_26

    sget-object v21, Lg/dih;->LEFT:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v23, v21

    move/from16 v24, v0

    move-object/from16 v20, v2

    move/from16 v25, v15

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    goto :goto_1a

    :cond_26
    move-object/from16 v20, v2

    goto :goto_1a

    :cond_27
    move-object/from16 v20, v2

    move/from16 v25, v15

    if-eq v5, v11, :cond_28

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_28

    sget-object v21, Lg/dih;->LEFT:Lg/dih;

    sget-object v23, Lg/dih;->RIGHT:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    :cond_28
    :goto_1a
    if-eq v9, v11, :cond_29

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2a

    sget-object v21, Lg/dih;->RIGHT:Lg/dih;

    sget-object v23, Lg/dih;->LEFT:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v24, v0

    move/from16 v25, v26

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    goto :goto_1b

    :cond_29
    move/from16 v25, v26

    if-eq v14, v11, :cond_2a

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2a

    sget-object v21, Lg/dih;->RIGHT:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v23, v21

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    :cond_2a
    :goto_1b
    iget v0, v4, Lg/dnk;->as:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2b

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2c

    sget-object v21, Lg/dih;->TOP:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v4, Lg/dnk;->bm:I

    move-object/from16 v23, v21

    move/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    goto :goto_1c

    :cond_2b
    iget v0, v4, Lg/dnk;->ax:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2c

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2c

    sget-object v21, Lg/dih;->TOP:Lg/dih;

    sget-object v23, Lg/dih;->BOTTOM:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v4, Lg/dnk;->bm:I

    move/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    :cond_2c
    :goto_1c
    iget v0, v4, Lg/dnk;->d:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2e

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2d

    sget-object v21, Lg/dih;->BOTTOM:Lg/dih;

    sget-object v23, Lg/dih;->TOP:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v4, Lg/dnk;->a:I

    move/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    :cond_2d
    :goto_1d
    move-object v2, v4

    goto :goto_1e

    :cond_2e
    iget v0, v4, Lg/dnk;->u:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2d

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lg/brh;

    if-eqz v22, :cond_2d

    sget-object v21, Lg/dih;->BOTTOM:Lg/dih;

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v4, Lg/dnk;->a:I

    move-object/from16 v23, v21

    move/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v25}, Lg/brh;->du(Lg/dih;Lg/brh;Lg/dih;II)V

    goto :goto_1d

    :goto_1e
    iget v4, v2, Lg/dnk;->ao:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_2f

    sget-object v5, Lg/dih;->BASELINE:Lg/dih;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->t(Lg/brh;Lg/dnk;Landroid/util/SparseArray;ILg/dih;)V

    goto :goto_1f

    :cond_2f
    iget v4, v2, Lg/dnk;->r:I

    if-eq v4, v11, :cond_30

    sget-object v5, Lg/dih;->TOP:Lg/dih;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->t(Lg/brh;Lg/dnk;Landroid/util/SparseArray;ILg/dih;)V

    goto :goto_1f

    :cond_30
    iget v4, v2, Lg/dnk;->j:I

    if-eq v4, v11, :cond_31

    sget-object v5, Lg/dih;->BOTTOM:Lg/dih;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->t(Lg/brh;Lg/dnk;Landroid/util/SparseArray;ILg/dih;)V

    goto :goto_1f

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    :goto_1f
    cmpl-float v4, v8, v28

    if-ltz v4, :cond_32

    iput v8, v1, Lg/brh;->cp:F

    :cond_32
    iget v4, v2, Lg/dnk;->bb:F

    cmpl-float v5, v4, v28

    if-ltz v5, :cond_33

    iput v4, v1, Lg/brh;->ct:F

    :cond_33
    :goto_20
    if-eqz v12, :cond_35

    iget v4, v2, Lg/dnk;->av:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_34

    iget v5, v2, Lg/dnk;->x:I

    if-eq v5, v11, :cond_35

    :cond_34
    iget v5, v2, Lg/dnk;->x:I

    iput v4, v1, Lg/brh;->cv:I

    iput v5, v1, Lg/brh;->cb:I

    :cond_35
    iget-boolean v4, v2, Lg/dnk;->ap:Z

    const/4 v5, -0x2

    if-nez v4, :cond_38

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_37

    iget-boolean v4, v2, Lg/dnk;->ah:Z

    if-eqz v4, :cond_36

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->ds(Lg/fol;)V

    goto :goto_21

    :cond_36
    sget-object v4, Lg/fol;->MATCH_PARENT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->ds(Lg/fol;)V

    :goto_21
    sget-object v4, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v1, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v8, v4, Lg/hac;->i:I

    sget-object v4, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v1, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v4, Lg/hac;->i:I

    goto :goto_22

    :cond_37
    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->ds(Lg/fol;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lg/brh;->ed(I)V

    goto :goto_22

    :cond_38
    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->ds(Lg/fol;)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v4}, Lg/brh;->ed(I)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v5, :cond_39

    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->ds(Lg/fol;)V

    :cond_39
    :goto_22
    iget-boolean v4, v2, Lg/dnk;->ab:Z

    if-nez v4, :cond_3c

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_3b

    iget-boolean v4, v2, Lg/dnk;->ae:Z

    if-eqz v4, :cond_3a

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->dl(Lg/fol;)V

    goto :goto_23

    :cond_3a
    sget-object v4, Lg/fol;->MATCH_PARENT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->dl(Lg/fol;)V

    :goto_23
    sget-object v4, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v1, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v4, Lg/hac;->i:I

    sget-object v4, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v1, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v4, Lg/hac;->i:I

    goto :goto_24

    :cond_3b
    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->dl(Lg/fol;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lg/brh;->dj(I)V

    goto :goto_24

    :cond_3c
    const/4 v11, -0x1

    sget-object v4, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->dl(Lg/fol;)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v4}, Lg/brh;->dj(I)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v5, :cond_3d

    sget-object v4, Lg/fol;->WRAP_CONTENT:Lg/fol;

    invoke-virtual {v1, v4}, Lg/brh;->dl(Lg/fol;)V

    :cond_3d
    :goto_24
    iget-object v4, v2, Lg/dnk;->o:Ljava/lang/String;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3f

    :cond_3e
    const/4 v4, 0x0

    goto/16 :goto_28

    :cond_3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x2c

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_42

    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_42

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v9, "W"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    const/4 v9, 0x0

    goto :goto_25

    :cond_40
    const-string v9, "H"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/4 v9, 0x1

    goto :goto_25

    :cond_41
    const/4 v9, -0x1

    :goto_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_42
    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_26
    const/16 v14, 0x3a

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_44

    add-int/lit8 v5, v5, -0x1

    if-ge v14, v5, :cond_44

    invoke-virtual {v4, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_45

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_45

    :try_start_2
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v8, v5, v28

    if-lez v8, :cond_45

    cmpl-float v8, v4, v28

    if-lez v8, :cond_45

    const/4 v8, 0x1

    if-ne v9, v8, :cond_43

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_27

    :cond_43
    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_27

    :cond_44
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_45

    :try_start_3
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_27

    :catch_2
    nop

    :cond_45
    const/4 v4, 0x0

    :goto_27
    cmpl-float v5, v4, v28

    if-lez v5, :cond_46

    iput v4, v1, Lg/brh;->bq:F

    iput v9, v1, Lg/brh;->db:I

    goto :goto_29

    :goto_28
    iput v4, v1, Lg/brh;->bq:F

    :cond_46
    :goto_29
    iget v4, v2, Lg/dnk;->f:F

    iget-object v5, v1, Lg/brh;->cu:[F

    const/16 v19, 0x0

    aput v4, v5, v19

    iget v4, v2, Lg/dnk;->bk:F

    const/16 v16, 0x1

    aput v4, v5, v16

    iget v4, v2, Lg/dnk;->al:I

    iput v4, v1, Lg/brh;->cs:I

    iget v4, v2, Lg/dnk;->af:I

    iput v4, v1, Lg/brh;->bw:I

    iget v4, v2, Lg/dnk;->bj:I

    if-ltz v4, :cond_47

    const/4 v5, 0x3

    if-gt v4, v5, :cond_47

    iput v4, v1, Lg/brh;->ck:I

    :cond_47
    iget v4, v2, Lg/dnk;->g:I

    iget v5, v2, Lg/dnk;->m:I

    iget v8, v2, Lg/dnk;->ar:I

    iget v9, v2, Lg/dnk;->aq:F

    iput v4, v1, Lg/brh;->da:I

    iput v5, v1, Lg/brh;->bl:I

    const v5, 0x7fffffff

    if-ne v8, v5, :cond_48

    const/4 v8, 0x0

    :cond_48
    iput v8, v1, Lg/brh;->bs:I

    iput v9, v1, Lg/brh;->bu:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    cmpl-float v14, v9, v28

    if-lez v14, :cond_49

    cmpg-float v9, v9, v8

    if-gez v9, :cond_49

    if-nez v4, :cond_49

    const/4 v4, 0x2

    iput v4, v1, Lg/brh;->da:I

    :cond_49
    iget v4, v2, Lg/dnk;->ad:I

    iget v9, v2, Lg/dnk;->bc:I

    iget v14, v2, Lg/dnk;->l:I

    iget v2, v2, Lg/dnk;->be:F

    iput v4, v1, Lg/brh;->by:I

    iput v9, v1, Lg/brh;->cy:I

    if-ne v14, v5, :cond_4a

    const/4 v14, 0x0

    :cond_4a
    iput v14, v1, Lg/brh;->aw:I

    iput v2, v1, Lg/brh;->am:F

    const/16 v28, 0x0

    cmpl-float v5, v2, v28

    if-lez v5, :cond_4b

    cmpg-float v2, v2, v8

    if-gez v2, :cond_4b

    if-nez v4, :cond_4b

    const/4 v4, 0x2

    iput v4, v1, Lg/brh;->by:I

    goto :goto_2a

    :cond_4b
    const/4 v4, 0x2

    :goto_2a
    add-int/lit8 v8, v18, 0x1

    move/from16 v11, v27

    const/16 v17, 0x2

    goto/16 :goto_18

    :cond_4c
    move/from16 v27, v11

    if-eqz v27, :cond_4d

    iget-object v1, v10, Lg/aep;->b:Lg/dzh;

    invoke-virtual {v1, v10}, Lg/dzh;->ac(Lg/aep;)V

    :cond_4d
    iget-object v1, v10, Lg/aep;->s:Lg/bwo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {v0, v10, v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->s(Lg/aep;III)V

    invoke-virtual {v10}, Lg/brh;->eb()I

    move-result v1

    invoke-virtual {v10}, Lg/brh;->di()I

    move-result v2

    iget-boolean v3, v10, Lg/aep;->l:Z

    iget-boolean v4, v10, Lg/aep;->r:Z

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lg/gri;

    iget v8, v5, Lg/gri;->c:I

    iget v5, v5, Lg/gri;->b:I

    add-int/2addr v1, v5

    add-int/2addr v2, v8

    const/4 v9, 0x0

    invoke-static {v1, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v2, v7, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const v5, 0xffffff

    and-int/2addr v1, v5

    and-int/2addr v2, v5

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x1000000

    if-eqz v3, :cond_4e

    or-int/2addr v1, v5

    :cond_4e
    if-eqz v4, :cond_4f

    or-int/2addr v2, v5

    :cond_4f
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v0

    instance-of v1, p1, Lg/dqd;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lg/aar;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/dnk;

    new-instance v1, Lg/aar;

    invoke-direct {v1}, Lg/aar;-><init>()V

    iput-object v1, v0, Lg/dnk;->aw:Lg/brh;

    iput-boolean v2, v0, Lg/dnk;->i:Z

    iget v0, v0, Lg/dnk;->q:I

    invoke-virtual {v1, v0}, Lg/aar;->n(I)V

    :cond_0
    instance-of v0, p1, Lg/atw;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lg/atw;

    invoke-virtual {v0}, Lg/atw;->o()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/dnk;

    iput-boolean v2, v1, Lg/dnk;->bd:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(Landroid/view/View;)Lg/brh;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iget-object v1, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lg/brh;->af()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    return-void
.end method

.method public final r(Landroid/view/View;)Lg/brh;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lg/dnk;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/dnk;

    iget-object p1, p1, Lg/dnk;->aw:Lg/brh;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lg/dnk;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lg/dnk;

    iget-object p1, p1, Lg/dnk;->aw:Lg/brh;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final s(Lg/aep;III)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v11

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lg/gri;

    iput v7, v12, Lg/gri;->f:I

    iput v9, v12, Lg/gri;->g:I

    iput v11, v12, Lg/gri;->b:I

    iput v10, v12, Lg/gri;->c:I

    move/from16 v9, p3

    iput v9, v12, Lg/gri;->e:I

    move/from16 v9, p4

    iput v9, v12, Lg/gri;->h:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    if-gtz v9, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v14, v15, :cond_2

    move v9, v13

    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    sub-int/2addr v6, v10

    iget v10, v12, Lg/gri;->c:I

    iget v11, v12, Lg/gri;->b:I

    sget-object v12, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v14, -0x80000000

    if-eq v3, v14, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_3

    move-object v14, v12

    :goto_2
    const/high16 v8, -0x80000000

    const/4 v15, 0x0

    goto :goto_5

    :cond_3
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    sub-int/2addr v15, v11

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object v14, v12

    :goto_3
    const/high16 v8, -0x80000000

    goto :goto_5

    :cond_4
    sget-object v15, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-nez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_4
    move-object v8, v15

    move v15, v14

    move-object v14, v8

    goto :goto_3

    :cond_5
    move-object v14, v15

    goto :goto_2

    :cond_6
    sget-object v15, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-nez v13, :cond_7

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_4

    :cond_7
    move-object v14, v15

    const/high16 v8, -0x80000000

    move v15, v4

    :goto_5
    if-eq v5, v8, :cond_b

    if-eqz v5, :cond_a

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_9

    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    sub-int/2addr v8, v10

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v13, v8

    goto :goto_6

    :cond_a
    sget-object v12, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-nez v13, :cond_8

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v13, 0x0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v13, v16

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    sget-object v12, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-nez v13, :cond_c

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_6

    :cond_c
    move v13, v6

    :goto_6
    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v8

    move/from16 v17, v10

    iget-object v10, v1, Lg/brh;->bo:[I

    move-object/from16 v18, v10

    iget-object v10, v1, Lg/aep;->v:Lg/ar;

    if-ne v15, v8, :cond_d

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v8

    if-eq v13, v8, :cond_e

    :cond_d
    const/4 v8, 0x1

    goto :goto_8

    :cond_e
    :goto_7
    const/16 p3, 0x1

    const/4 v8, 0x0

    goto :goto_9

    :goto_8
    iput-boolean v8, v10, Lg/ar;->g:Z

    goto :goto_7

    :goto_9
    iput v8, v1, Lg/brh;->cv:I

    iput v8, v1, Lg/brh;->cb:I

    const/16 v16, 0x0

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    sub-int/2addr v8, v11

    aput v8, v18, v16

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    sub-int v8, v8, v17

    aput v8, v18, p3

    const/4 v8, 0x0

    iput v8, v1, Lg/brh;->bb:I

    iput v8, v1, Lg/brh;->au:I

    invoke-virtual {v1, v14}, Lg/brh;->ds(Lg/fol;)V

    invoke-virtual {v1, v15}, Lg/brh;->ed(I)V

    invoke-virtual {v1, v12}, Lg/brh;->dl(Lg/fol;)V

    invoke-virtual {v1, v13}, Lg/brh;->dj(I)V

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v12, v11

    if-gez v12, :cond_f

    iput v8, v1, Lg/brh;->bb:I

    goto :goto_a

    :cond_f
    iput v12, v1, Lg/brh;->bb:I

    :goto_a
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int v11, v11, v17

    if-gez v11, :cond_10

    iput v8, v1, Lg/brh;->au:I

    goto :goto_b

    :cond_10
    iput v11, v1, Lg/brh;->au:I

    :goto_b
    iput v9, v1, Lg/aep;->z:I

    iput v7, v1, Lg/aep;->o:I

    iget-object v7, v1, Lg/aep;->b:Lg/dzh;

    iget-object v8, v7, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v8, Lg/aep;

    iget-object v9, v7, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget-object v11, v1, Lg/aep;->y:Lg/gri;

    iget-object v12, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v13

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v14

    const/16 v15, 0x80

    invoke-static {v2, v15}, Lg/bff;->x(II)Z

    move-result v15

    const/16 v0, 0x40

    if-nez v15, :cond_12

    invoke-static {v2, v0}, Lg/bff;->x(II)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v2, 0x1

    :goto_d
    const/16 v17, 0x0

    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v12, :cond_1b

    move/from16 p2, v2

    iget-object v2, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/brh;

    move/from16 v20, v0

    iget-object v0, v2, Lg/brh;->ch:[Lg/fol;

    move-object/from16 v21, v0

    const/16 v16, 0x0

    aget-object v0, v21, v16

    move/from16 v22, v12

    sget-object v12, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v0, v12, :cond_13

    const/16 v24, 0x1

    :goto_f
    const/16 v23, 0x1

    goto :goto_10

    :cond_13
    const/16 v24, 0x0

    goto :goto_f

    :goto_10
    aget-object v0, v21, v23

    if-ne v0, v12, :cond_14

    const/4 v0, 0x1

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    :goto_11
    if-eqz v24, :cond_15

    if-eqz v0, :cond_15

    iget v0, v2, Lg/brh;->bq:F

    cmpl-float v0, v0, v17

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v2}, Lg/brh;->eg()Z

    move-result v12

    if-eqz v12, :cond_17

    if-eqz v0, :cond_17

    :cond_16
    :goto_13
    const/4 v0, 0x0

    :goto_14
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_15

    :cond_17
    invoke-virtual {v2}, Lg/brh;->dk()Z

    move-result v12

    if-eqz v12, :cond_18

    if-eqz v0, :cond_18

    goto :goto_13

    :cond_18
    instance-of v0, v2, Lg/dbr;

    if-eqz v0, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v2}, Lg/brh;->eg()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v2}, Lg/brh;->dk()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_13

    :cond_1a
    add-int/lit8 v0, v20, 0x1

    move/from16 v2, p2

    move/from16 v12, v22

    goto :goto_e

    :cond_1b
    move/from16 p2, v2

    move/from16 v22, v12

    move/from16 v0, p2

    goto :goto_14

    :goto_15
    if-ne v3, v2, :cond_1c

    if-eq v5, v2, :cond_1d

    :cond_1c
    if-eqz v15, :cond_1e

    :cond_1d
    const/4 v2, 0x1

    goto :goto_16

    :cond_1e
    const/4 v2, 0x0

    :goto_16
    and-int/2addr v0, v2

    if-eqz v0, :cond_3e

    const/16 v16, 0x0

    aget v12, v18, v16

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v12, 0x1

    aget v2, v18, v12

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_20

    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v6

    if-eq v6, v4, :cond_1f

    invoke-virtual {v1, v4}, Lg/brh;->ed(I)V

    iget-object v4, v1, Lg/aep;->v:Lg/ar;

    iput-boolean v12, v4, Lg/ar;->f:Z

    :cond_1f
    const/high16 v6, 0x40000000    # 2.0f

    :cond_20
    if-ne v5, v6, :cond_21

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v4

    if-eq v4, v2, :cond_21

    invoke-virtual {v1, v2}, Lg/brh;->dj(I)V

    iget-object v2, v1, Lg/aep;->v:Lg/ar;

    iput-boolean v12, v2, Lg/ar;->f:Z

    :cond_21
    if-ne v3, v6, :cond_37

    if-ne v5, v6, :cond_37

    iget-object v2, v10, Lg/ar;->c:Ljava/util/ArrayList;

    iget-object v4, v10, Lg/ar;->d:Lg/aep;

    iget-boolean v6, v10, Lg/ar;->f:Z

    if-nez v6, :cond_23

    iget-boolean v6, v10, Lg/ar;->g:Z

    if-eqz v6, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_19

    :cond_23
    :goto_17
    iget-object v6, v4, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/brh;

    invoke-virtual {v12}, Lg/brh;->dh()V

    move/from16 v18, v0

    const/4 v0, 0x0

    iput-boolean v0, v12, Lg/brh;->bk:Z

    iget-object v0, v12, Lg/brh;->be:Lg/dza;

    invoke-virtual {v0}, Lg/dza;->y()V

    iget-object v0, v12, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v0}, Lg/fju;->y()V

    move/from16 v0, v18

    goto :goto_18

    :cond_24
    move/from16 v18, v0

    invoke-virtual {v4}, Lg/brh;->dh()V

    const/4 v0, 0x0

    iput-boolean v0, v4, Lg/brh;->bk:Z

    iget-object v6, v4, Lg/brh;->be:Lg/dza;

    invoke-virtual {v6}, Lg/dza;->y()V

    iget-object v6, v4, Lg/brh;->bi:Lg/fju;

    invoke-virtual {v6}, Lg/fju;->y()V

    iput-boolean v0, v10, Lg/ar;->g:Z

    :goto_19
    iget-object v6, v10, Lg/ar;->b:Lg/aep;

    invoke-virtual {v10, v6}, Lg/ar;->m(Lg/aep;)V

    iput v0, v4, Lg/brh;->cv:I

    iget-object v6, v4, Lg/brh;->ch:[Lg/fol;

    iput v0, v4, Lg/brh;->cb:I

    invoke-virtual {v4, v0}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v12

    move-object/from16 v20, v2

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v2

    iget-boolean v0, v10, Lg/ar;->f:Z

    if-eqz v0, :cond_25

    invoke-virtual {v10}, Lg/ar;->n()V

    :cond_25
    invoke-virtual {v4}, Lg/brh;->ei()I

    move-result v0

    move-object/from16 v21, v6

    invoke-virtual {v4}, Lg/brh;->dy()I

    move-result v6

    move-object/from16 v23, v11

    iget-object v11, v4, Lg/brh;->be:Lg/dza;

    iget-object v11, v11, Lg/mi;->a:Lg/big;

    invoke-virtual {v11, v0}, Lg/big;->m(I)V

    iget-object v11, v4, Lg/brh;->bi:Lg/fju;

    iget-object v11, v11, Lg/mi;->a:Lg/big;

    invoke-virtual {v11, v6}, Lg/big;->m(I)V

    invoke-virtual {v10}, Lg/ar;->o()V

    sget-object v11, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-eq v12, v11, :cond_28

    if-ne v2, v11, :cond_26

    goto :goto_1b

    :cond_26
    move/from16 v24, v0

    :cond_27
    :goto_1a
    const/16 v16, 0x0

    goto :goto_1d

    :cond_28
    :goto_1b
    if-eqz v15, :cond_2a

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_29
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lg/mi;

    invoke-virtual/range {v24 .. v24}, Lg/mi;->n()Z

    move-result v24

    if-nez v24, :cond_29

    const/4 v15, 0x0

    :cond_2a
    if-eqz v15, :cond_2b

    sget-object v11, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v12, v11, :cond_2b

    sget-object v11, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v4, v11}, Lg/brh;->ds(Lg/fol;)V

    move/from16 v24, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lg/ar;->i(Lg/aep;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lg/brh;->ed(I)V

    iget-object v0, v4, Lg/brh;->be:Lg/dza;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v4}, Lg/brh;->eb()I

    move-result v11

    invoke-virtual {v0, v11}, Lg/eeh;->m(I)V

    goto :goto_1c

    :cond_2b
    move/from16 v24, v0

    :goto_1c
    if-eqz v15, :cond_27

    sget-object v0, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v2, v0, :cond_27

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {v4, v0}, Lg/brh;->dl(Lg/fol;)V

    const/4 v0, 0x1

    invoke-virtual {v10, v4, v0}, Lg/ar;->i(Lg/aep;I)I

    move-result v11

    invoke-virtual {v4, v11}, Lg/brh;->dj(I)V

    iget-object v0, v4, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v4}, Lg/brh;->di()I

    move-result v11

    invoke-virtual {v0, v11}, Lg/eeh;->m(I)V

    goto :goto_1a

    :goto_1d
    aget-object v0, v21, v16

    sget-object v11, Lg/fol;->FIXED:Lg/fol;

    if-eq v0, v11, :cond_2d

    sget-object v15, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v0, v15, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2d
    :goto_1e
    invoke-virtual {v4}, Lg/brh;->eb()I

    move-result v0

    add-int v0, v0, v24

    iget-object v15, v4, Lg/brh;->be:Lg/dza;

    iget-object v15, v15, Lg/mi;->f:Lg/big;

    invoke-virtual {v15, v0}, Lg/big;->m(I)V

    iget-object v15, v4, Lg/brh;->be:Lg/dza;

    iget-object v15, v15, Lg/mi;->c:Lg/eeh;

    sub-int v0, v0, v24

    invoke-virtual {v15, v0}, Lg/eeh;->m(I)V

    invoke-virtual {v10}, Lg/ar;->o()V

    const/4 v0, 0x1

    aget-object v15, v21, v0

    if-eq v15, v11, :cond_2e

    sget-object v0, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v15, v0, :cond_2f

    :cond_2e
    invoke-virtual {v4}, Lg/brh;->di()I

    move-result v0

    add-int/2addr v0, v6

    iget-object v11, v4, Lg/brh;->bi:Lg/fju;

    iget-object v11, v11, Lg/mi;->f:Lg/big;

    invoke-virtual {v11, v0}, Lg/big;->m(I)V

    iget-object v11, v4, Lg/brh;->bi:Lg/fju;

    iget-object v11, v11, Lg/mi;->c:Lg/eeh;

    sub-int/2addr v0, v6

    invoke-virtual {v11, v0}, Lg/eeh;->m(I)V

    :cond_2f
    invoke-virtual {v10}, Lg/ar;->o()V

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/mi;

    iget-object v11, v10, Lg/mi;->g:Lg/brh;

    if-ne v11, v4, :cond_30

    iget-boolean v11, v10, Lg/mi;->j:Z

    if-nez v11, :cond_30

    goto :goto_20

    :cond_30
    invoke-virtual {v10}, Lg/mi;->q()V

    goto :goto_20

    :cond_31
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/mi;

    if-nez v0, :cond_33

    iget-object v11, v10, Lg/mi;->g:Lg/brh;

    if-ne v11, v4, :cond_33

    goto :goto_21

    :cond_33
    iget-object v11, v10, Lg/mi;->a:Lg/big;

    iget-boolean v11, v11, Lg/big;->j:Z

    if-nez v11, :cond_34

    :goto_22
    const/4 v0, 0x0

    goto :goto_23

    :cond_34
    iget-object v11, v10, Lg/mi;->f:Lg/big;

    iget-boolean v11, v11, Lg/big;->j:Z

    if-nez v11, :cond_35

    instance-of v11, v10, Lg/cnr;

    if-nez v11, :cond_35

    goto :goto_22

    :cond_35
    iget-object v11, v10, Lg/mi;->c:Lg/eeh;

    iget-boolean v11, v11, Lg/big;->j:Z

    if-nez v11, :cond_32

    instance-of v11, v10, Lg/gnk;

    if-nez v11, :cond_32

    instance-of v10, v10, Lg/cnr;

    if-nez v10, :cond_32

    goto :goto_22

    :cond_36
    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v4, v12}, Lg/brh;->ds(Lg/fol;)V

    invoke-virtual {v4, v2}, Lg/brh;->dl(Lg/fol;)V

    const/4 v2, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_27

    :cond_37
    move/from16 v18, v0

    move-object/from16 v23, v11

    iget-object v0, v10, Lg/ar;->d:Lg/aep;

    iget-boolean v2, v10, Lg/ar;->f:Z

    if-eqz v2, :cond_39

    iget-object v2, v0, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/brh;

    invoke-virtual {v4}, Lg/brh;->dh()V

    const/4 v11, 0x0

    iput-boolean v11, v4, Lg/brh;->bk:Z

    iget-object v6, v4, Lg/brh;->be:Lg/dza;

    iget-object v12, v6, Lg/mi;->c:Lg/eeh;

    iput-boolean v11, v12, Lg/big;->j:Z

    iput-boolean v11, v6, Lg/mi;->j:Z

    invoke-virtual {v6}, Lg/dza;->y()V

    iget-object v4, v4, Lg/brh;->bi:Lg/fju;

    iget-object v6, v4, Lg/mi;->c:Lg/eeh;

    iput-boolean v11, v6, Lg/big;->j:Z

    iput-boolean v11, v4, Lg/mi;->j:Z

    invoke-virtual {v4}, Lg/fju;->y()V

    goto :goto_24

    :cond_38
    const/4 v11, 0x0

    invoke-virtual {v0}, Lg/brh;->dh()V

    iput-boolean v11, v0, Lg/brh;->bk:Z

    iget-object v2, v0, Lg/brh;->be:Lg/dza;

    iget-object v4, v2, Lg/mi;->c:Lg/eeh;

    iput-boolean v11, v4, Lg/big;->j:Z

    iput-boolean v11, v2, Lg/mi;->j:Z

    invoke-virtual {v2}, Lg/dza;->y()V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v4, v2, Lg/mi;->c:Lg/eeh;

    iput-boolean v11, v4, Lg/big;->j:Z

    iput-boolean v11, v2, Lg/mi;->j:Z

    invoke-virtual {v2}, Lg/fju;->y()V

    invoke-virtual {v10}, Lg/ar;->n()V

    goto :goto_25

    :cond_39
    const/4 v11, 0x0

    :goto_25
    iget-object v2, v10, Lg/ar;->b:Lg/aep;

    invoke-virtual {v10, v2}, Lg/ar;->m(Lg/aep;)V

    iput v11, v0, Lg/brh;->cv:I

    iput v11, v0, Lg/brh;->cb:I

    iget-object v2, v0, Lg/brh;->be:Lg/dza;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    invoke-virtual {v2, v11}, Lg/big;->m(I)V

    iget-object v0, v0, Lg/brh;->bi:Lg/fju;

    iget-object v0, v0, Lg/mi;->a:Lg/big;

    invoke-virtual {v0, v11}, Lg/big;->m(I)V

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_3a

    invoke-virtual {v1, v11, v15}, Lg/aep;->aj(IZ)Z

    move-result v0

    const/4 v2, 0x1

    goto :goto_26

    :cond_3a
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_26
    if-ne v5, v6, :cond_3b

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v15}, Lg/aep;->aj(IZ)Z

    move-result v4

    and-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    :cond_3b
    :goto_27
    if-eqz v0, :cond_3f

    if-ne v3, v6, :cond_3c

    const/4 v3, 0x1

    goto :goto_28

    :cond_3c
    const/4 v3, 0x0

    :goto_28
    if-ne v5, v6, :cond_3d

    const/4 v4, 0x1

    goto :goto_29

    :cond_3d
    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v1, v3, v4}, Lg/aep;->ai(ZZ)V

    goto :goto_2a

    :cond_3e
    move/from16 v18, v0

    move-object/from16 v23, v11

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_3f
    :goto_2a
    if-eqz v0, :cond_41

    const/4 v0, 0x2

    if-eq v2, v0, :cond_40

    goto :goto_2b

    :cond_40
    return-void

    :cond_41
    :goto_2b
    iget v0, v1, Lg/aep;->w:I

    if-lez v22, :cond_4e

    iget-object v2, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lg/aep;->ag(I)Z

    move-result v3

    iget-object v4, v1, Lg/aep;->y:Lg/gri;

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v2, :cond_4c

    iget-object v6, v1, Lg/aep;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/brh;

    instance-of v10, v6, Lg/aar;

    if-eqz v10, :cond_42

    :goto_2d
    move/from16 p4, v2

    goto/16 :goto_2f

    :cond_42
    instance-of v10, v6, Lg/r;

    if-eqz v10, :cond_43

    goto :goto_2d

    :cond_43
    iget-boolean v10, v6, Lg/brh;->cn:Z

    if-eqz v10, :cond_44

    goto :goto_2d

    :cond_44
    if-eqz v3, :cond_45

    iget-object v10, v6, Lg/brh;->be:Lg/dza;

    if-eqz v10, :cond_45

    iget-object v11, v6, Lg/brh;->bi:Lg/fju;

    if-eqz v11, :cond_45

    iget-object v10, v10, Lg/mi;->c:Lg/eeh;

    iget-boolean v10, v10, Lg/big;->j:Z

    if-eqz v10, :cond_45

    iget-object v10, v11, Lg/mi;->c:Lg/eeh;

    iget-boolean v10, v10, Lg/big;->j:Z

    if-eqz v10, :cond_45

    goto :goto_2d

    :cond_45
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lg/brh;->ea(I)Lg/fol;

    move-result-object v11

    sget-object v15, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    move/from16 p4, v2

    if-ne v10, v15, :cond_46

    iget v2, v6, Lg/brh;->da:I

    if-eq v2, v12, :cond_46

    if-ne v11, v15, :cond_46

    iget v2, v6, Lg/brh;->by:I

    if-eq v2, v12, :cond_46

    const/4 v2, 0x1

    goto :goto_2e

    :cond_46
    const/4 v2, 0x0

    :goto_2e
    if-nez v2, :cond_4a

    invoke-virtual {v1, v12}, Lg/aep;->ag(I)Z

    move-result v19

    if-eqz v19, :cond_4a

    instance-of v12, v6, Lg/dbr;

    if-nez v12, :cond_4a

    if-ne v10, v15, :cond_47

    iget v12, v6, Lg/brh;->da:I

    if-nez v12, :cond_47

    if-eq v11, v15, :cond_47

    invoke-virtual {v6}, Lg/brh;->eg()Z

    move-result v12

    if-nez v12, :cond_47

    const/4 v2, 0x1

    :cond_47
    if-ne v11, v15, :cond_48

    iget v12, v6, Lg/brh;->by:I

    if-nez v12, :cond_48

    if-eq v10, v15, :cond_48

    invoke-virtual {v6}, Lg/brh;->eg()Z

    move-result v12

    if-nez v12, :cond_48

    const/4 v2, 0x1

    :cond_48
    if-eq v10, v15, :cond_49

    if-ne v11, v15, :cond_4a

    :cond_49
    iget v10, v6, Lg/brh;->bq:F

    cmpl-float v10, v10, v17

    if-lez v10, :cond_4a

    const/4 v2, 0x1

    :cond_4a
    if-eqz v2, :cond_4b

    goto :goto_2f

    :cond_4b
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v4, v6}, Lg/dzh;->y(ILg/gri;Lg/brh;)Z

    :goto_2f
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p4

    goto/16 :goto_2c

    :cond_4c
    iget-object v2, v4, Lg/gri;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_4d

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_4e

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/atw;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4e
    invoke-virtual {v7, v1}, Lg/dzh;->ac(Lg/aep;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x0

    if-lez v22, :cond_4f

    invoke-virtual {v7, v1, v11, v13, v14}, Lg/dzh;->m(Lg/aep;III)V

    :cond_4f
    if-lez v2, :cond_65

    iget-object v3, v1, Lg/brh;->ch:[Lg/fol;

    aget-object v4, v3, v11

    sget-object v5, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v4, v5, :cond_50

    const/4 v4, 0x1

    :goto_32
    const/4 v12, 0x1

    goto :goto_33

    :cond_50
    const/4 v4, 0x0

    goto :goto_32

    :goto_33
    aget-object v3, v3, v12

    if-ne v3, v5, :cond_51

    const/4 v3, 0x1

    goto :goto_34

    :cond_51
    const/4 v3, 0x0

    :goto_34
    invoke-virtual {v1}, Lg/brh;->eb()I

    move-result v5

    iget v6, v8, Lg/brh;->bb:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1}, Lg/brh;->di()I

    move-result v6

    iget v8, v8, Lg/brh;->au:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_35
    if-ge v8, v2, :cond_57

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/brh;

    instance-of v15, v12, Lg/dbr;

    if-nez v15, :cond_52

    move/from16 p4, v3

    move/from16 v17, v4

    move-object/from16 v3, v23

    goto/16 :goto_36

    :cond_52
    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v15

    invoke-virtual {v12}, Lg/brh;->di()I

    move-result v11

    move/from16 p4, v3

    move/from16 v17, v4

    move-object/from16 v3, v23

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v3, v12}, Lg/dzh;->y(ILg/gri;Lg/brh;)Z

    move-result v19

    or-int v4, v10, v19

    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v10

    move/from16 v19, v4

    invoke-virtual {v12}, Lg/brh;->di()I

    move-result v4

    if-eq v10, v15, :cond_54

    invoke-virtual {v12, v10}, Lg/brh;->ed(I)V

    if-eqz v17, :cond_53

    invoke-virtual {v12}, Lg/brh;->ei()I

    move-result v10

    iget v15, v12, Lg/brh;->bc:I

    add-int/2addr v10, v15

    if-le v10, v5, :cond_53

    invoke-virtual {v12}, Lg/brh;->ei()I

    move-result v10

    iget v15, v12, Lg/brh;->bc:I

    add-int/2addr v10, v15

    sget-object v15, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v12, v15}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v15

    invoke-virtual {v15}, Lg/hac;->n()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_53
    const/16 v19, 0x1

    :cond_54
    if-eq v4, v11, :cond_56

    invoke-virtual {v12, v4}, Lg/brh;->dj(I)V

    if-eqz p4, :cond_55

    invoke-virtual {v12}, Lg/brh;->dy()I

    move-result v4

    iget v10, v12, Lg/brh;->bt:I

    add-int/2addr v4, v10

    if-le v4, v6, :cond_55

    invoke-virtual {v12}, Lg/brh;->dy()I

    move-result v4

    iget v10, v12, Lg/brh;->bt:I

    add-int/2addr v4, v10

    sget-object v10, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v12, v10}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v10

    invoke-virtual {v10}, Lg/hac;->n()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_55
    const/16 v19, 0x1

    :cond_56
    check-cast v12, Lg/dbr;

    iget-boolean v4, v12, Lg/dbr;->u:Z

    or-int v4, v19, v4

    move v10, v4

    :goto_36
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v3

    move/from16 v4, v17

    const/4 v11, 0x0

    move/from16 v3, p4

    goto/16 :goto_35

    :cond_57
    move/from16 p4, v3

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_37
    move-object/from16 v3, v23

    const/4 v8, 0x2

    if-ge v4, v8, :cond_65

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v2, :cond_64

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/brh;

    instance-of v15, v12, Lg/gbi;

    if-eqz v15, :cond_58

    instance-of v15, v12, Lg/dbr;

    if-eqz v15, :cond_5c

    :cond_58
    instance-of v15, v12, Lg/aar;

    if-eqz v15, :cond_59

    goto :goto_39

    :cond_59
    iget v15, v12, Lg/brh;->aq:I

    const/16 v8, 0x8

    if-ne v15, v8, :cond_5a

    goto :goto_39

    :cond_5a
    if-eqz v18, :cond_5b

    iget-object v8, v12, Lg/brh;->be:Lg/dza;

    iget-object v8, v8, Lg/mi;->c:Lg/eeh;

    iget-boolean v8, v8, Lg/big;->j:Z

    if-eqz v8, :cond_5b

    iget-object v8, v12, Lg/brh;->bi:Lg/fju;

    iget-object v8, v8, Lg/mi;->c:Lg/eeh;

    iget-boolean v8, v8, Lg/big;->j:Z

    if-eqz v8, :cond_5b

    goto :goto_39

    :cond_5b
    instance-of v8, v12, Lg/dbr;

    if-eqz v8, :cond_5d

    :cond_5c
    :goto_39
    move/from16 v19, v2

    move-object/from16 v23, v3

    move-object/from16 v20, v9

    goto/16 :goto_3b

    :cond_5d
    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v8

    invoke-virtual {v12}, Lg/brh;->di()I

    move-result v15

    move/from16 v19, v2

    iget v2, v12, Lg/brh;->bn:I

    move-object/from16 v20, v9

    const/4 v9, 0x1

    if-ne v4, v9, :cond_5e

    const/4 v9, 0x2

    :cond_5e
    invoke-virtual {v7, v9, v3, v12}, Lg/dzh;->y(ILg/gri;Lg/brh;)Z

    move-result v9

    or-int/2addr v9, v10

    invoke-virtual {v12}, Lg/brh;->eb()I

    move-result v10

    move-object/from16 v23, v3

    invoke-virtual {v12}, Lg/brh;->di()I

    move-result v3

    if-eq v10, v8, :cond_60

    invoke-virtual {v12, v10}, Lg/brh;->ed(I)V

    if-eqz v17, :cond_5f

    invoke-virtual {v12}, Lg/brh;->ei()I

    move-result v8

    iget v9, v12, Lg/brh;->bc:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_5f

    invoke-virtual {v12}, Lg/brh;->ei()I

    move-result v8

    iget v9, v12, Lg/brh;->bc:I

    add-int/2addr v8, v9

    sget-object v9, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v12, v9}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v9

    invoke-virtual {v9}, Lg/hac;->n()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5f
    const/4 v8, 0x1

    goto :goto_3a

    :cond_60
    move v8, v9

    :goto_3a
    if-eq v3, v15, :cond_62

    invoke-virtual {v12, v3}, Lg/brh;->dj(I)V

    if-eqz p4, :cond_61

    invoke-virtual {v12}, Lg/brh;->dy()I

    move-result v3

    iget v8, v12, Lg/brh;->bt:I

    add-int/2addr v3, v8

    if-le v3, v6, :cond_61

    invoke-virtual {v12}, Lg/brh;->dy()I

    move-result v3

    iget v8, v12, Lg/brh;->bt:I

    add-int/2addr v3, v8

    sget-object v8, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v12, v8}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v8

    invoke-virtual {v8}, Lg/hac;->n()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_61
    const/4 v8, 0x1

    :cond_62
    iget-boolean v3, v12, Lg/brh;->cx:Z

    if-eqz v3, :cond_63

    iget v3, v12, Lg/brh;->bn:I

    if-eq v2, v3, :cond_63

    const/4 v10, 0x1

    goto :goto_3b

    :cond_63
    move v10, v8

    :goto_3b
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    move-object/from16 v9, v20

    move-object/from16 v3, v23

    const/4 v8, 0x2

    goto/16 :goto_38

    :cond_64
    move/from16 v19, v2

    move-object/from16 v23, v3

    move-object/from16 v20, v9

    if-eqz v10, :cond_65

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v1, v4, v13, v14}, Lg/dzh;->m(Lg/aep;III)V

    move/from16 v2, v19

    move-object/from16 v9, v20

    const/4 v10, 0x0

    goto/16 :goto_37

    :cond_65
    iput v0, v1, Lg/aep;->w:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Lg/aep;->ag(I)Z

    move-result v0

    sput-boolean v0, Lg/bwo;->a:Z

    return-void
.end method

.method public setConstraintSet(Lg/ebt;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    return-void
.end method

.method public setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lg/ahi;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Lg/akj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iput p1, v0, Lg/aep;->w:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lg/aep;->ag(I)Z

    move-result p1

    sput-boolean p1, Lg/bwo;->a:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lg/brh;Lg/dnk;Landroid/util/SparseArray;ILg/dih;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/brh;

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lg/dnk;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Lg/dnk;->p:Z

    sget-object v1, Lg/dih;->BASELINE:Lg/dih;

    if-ne p5, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/dnk;

    iput-boolean p4, v0, Lg/dnk;->p:Z

    iget-object v0, v0, Lg/dnk;->aw:Lg/brh;

    iput-boolean p4, v0, Lg/brh;->cx:Z

    :cond_0
    invoke-virtual {p1, v1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v0

    invoke-virtual {p3, p5}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    iget p5, p2, Lg/dnk;->aa:I

    iget p2, p2, Lg/dnk;->ac:I

    invoke-virtual {v0, p3, p5, p2, p4}, Lg/hac;->r(Lg/hac;IIZ)Z

    iput-boolean p4, p1, Lg/brh;->cx:Z

    sget-object p2, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {p1, p2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p2}, Lg/hac;->s()V

    sget-object p2, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p1, p2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p1}, Lg/hac;->s()V

    :cond_1
    return-void
.end method

.method public final u(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Lg/aep;

    iput-object p0, v0, Lg/brh;->bh:Landroid/view/View;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lg/gri;

    iput-object v1, v0, Lg/aep;->y:Lg/gri;

    iget-object v2, v0, Lg/aep;->v:Lg/ar;

    iput-object v1, v2, Lg/ar;->e:Lg/gri;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lg/bfv;->g:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_0
    const/16 v5, 0x11

    if-ne v3, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    :cond_1
    const/16 v5, 0xe

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    goto :goto_2

    :cond_2
    const/16 v5, 0xf

    if-ne v3, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    goto :goto_2

    :cond_3
    const/16 v5, 0x71

    if-ne v3, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    goto :goto_2

    :cond_4
    const/16 v5, 0x38

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->v(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Lg/akj;

    goto :goto_2

    :cond_5
    const/16 v5, 0x22

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v5, Lg/ebt;

    invoke-direct {v5}, Lg/ebt;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lg/ebt;->p(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lg/ebt;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    iput p1, v0, Lg/aep;->w:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lg/aep;->ag(I)Z

    move-result p1

    sput-boolean p1, Lg/bwo;->a:Z

    return-void
.end method

.method public final v(I)V
    .locals 12

    new-instance v0, Lg/akj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lg/akj;-><init>(I)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lg/akj;->h:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lg/akj;->f:Ljava/lang/Object;

    const-string v2, "Error parsing resource: "

    const-string v3, "ConstraintLayoutStates"

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "Variant"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x3

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :sswitch_1
    const-string v7, "layoutDescription"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_2
    const-string v9, "StateSet"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v7, "State"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_4
    const-string v7, "ConstraintSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eq v7, v8, :cond_4

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, v4}, Lg/akj;->v(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    :cond_3
    new-instance v5, Lg/dos;

    invoke-direct {v5, v1, v4}, Lg/dos;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v6, :cond_5

    iget-object v7, v6, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v5, Lg/gvg;

    invoke-direct {v5, v1, v4}, Lg/gvg;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v6, v0, Lg/akj;->h:Ljava/lang/Object;

    check-cast v6, Landroid/util/SparseArray;

    iget v7, v5, Lg/gvg;->e:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v5

    :cond_5
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Lg/akj;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method
