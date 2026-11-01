.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# instance fields
.field public b:[Landroid/view/View;

.field public final c:Landroid/graphics/Rect;

.field public d:I

.field public e:[I

.field public f:I

.field public g:Lg/cgo;

.field public final h:Landroid/util/SparseIntArray;

.field public i:I

.field public j:I

.field public final k:Landroid/util/SparseIntArray;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/util/SparseIntArray;

    new-instance v1, Lg/aeg;

    invoke-direct {v1}, Lg/cgo;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:Landroid/graphics/Rect;

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->as(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    const/4 p2, -0x1

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/util/SparseIntArray;

    new-instance v0, Lg/aeg;

    invoke-direct {v0}, Lg/cgo;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:Landroid/graphics/Rect;

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->as(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/util/SparseIntArray;

    new-instance v1, Lg/aeg;

    invoke-direct {v1}, Lg/cgo;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:Landroid/graphics/Rect;

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/b;->eb(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg/gur;

    move-result-object p1

    iget p1, p1, Lg/gur;->c:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->as(I)V

    return-void
.end method


# virtual methods
.method public final aa(Lg/aqz;Lg/cju;Landroidx/recyclerview/widget/r;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ge v2, v3, :cond_0

    iget v3, p2, Lg/cju;->c:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lg/aqz;->p()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Lg/cju;->c:I

    iget v4, p2, Lg/cju;->l:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroidx/recyclerview/widget/r;->e(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {v4, v3}, Lg/cgo;->_r(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p2, Lg/cju;->c:I

    iget v4, p2, Lg/cju;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Lg/cju;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ab(Lg/yx;)Z
    .locals 0

    instance-of p1, p1, Lg/ayb;

    return p1
.end method

.method public final ac(I)Ljava/util/HashSet;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ax(II)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public final ad()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    return-void
.end method

.method public final ae(Landroid/content/Context;Landroid/util/AttributeSet;)Lg/yx;
    .locals 1

    new-instance v0, Lg/ayb;

    invoke-direct {v0, p1, p2}, Lg/yx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, v0, Lg/ayb;->e:I

    const/4 p1, 0x0

    iput p1, v0, Lg/ayb;->f:I

    return-object v0
.end method

.method public final af(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final ag(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->af()V

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object p1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ah()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bd:Landroidx/recyclerview/widget/LinearLayoutManager$a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ai()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->p(I)V

    return-void
.end method

.method public final aj(Landroid/view/View;ILandroidx/recyclerview/widget/f;Lg/aqz;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object/from16 v5, p1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/b;->ds:Landroidx/recyclerview/widget/n;

    iget-object v6, v6, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    move-object v3, v4

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lg/ayb;

    iget v7, v6, Lg/ayb;->e:I

    iget v6, v6, Lg/ayb;->f:I

    add-int/2addr v6, v7

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->aj(Landroid/view/View;ILandroidx/recyclerview/widget/f;Lg/aqz;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_1
    return-object v4

    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->dk(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bg:Z

    const/4 v11, -0x1

    if-eq v5, v10, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v5

    sub-int/2addr v5, v9

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v5

    move v10, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    :goto_3
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v13, v9, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v14

    move-object/from16 v16, v4

    move v11, v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v15, -0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v17, v5

    if-eq v11, v10, :cond_18

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v5

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_a

    if-eq v5, v14, :cond_a

    if-eqz v16, :cond_9

    goto/16 :goto_c

    :cond_9
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v21, v10

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lg/ayb;

    iget v2, v5, Lg/ayb;->e:I

    move-object/from16 v18, v3

    iget v3, v5, Lg/ayb;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-ne v2, v7, :cond_b

    if-ne v3, v6, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-eqz v16, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    if-nez v17, :cond_e

    :cond_d
    move/from16 v19, v9

    move/from16 v21, v10

    goto :goto_9

    :cond_e
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v10

    sub-int v10, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_12

    if-le v10, v9, :cond_f

    :goto_6
    move/from16 v19, v9

    goto :goto_9

    :cond_f
    if-ne v10, v9, :cond_11

    if-le v2, v15, :cond_10

    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    :goto_7
    if-ne v13, v10, :cond_11

    goto :goto_6

    :cond_11
    move/from16 v19, v9

    goto :goto_a

    :cond_12
    if-nez v16, :cond_11

    move/from16 v19, v9

    iget-object v9, v0, Landroidx/recyclerview/widget/b;->dy:Lg/akj;

    invoke-virtual {v9, v1}, Lg/akj;->r(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroidx/recyclerview/widget/b;->dp:Lg/akj;

    invoke-virtual {v9, v1}, Lg/akj;->r(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_a

    :cond_13
    if-le v10, v4, :cond_14

    goto :goto_9

    :cond_14
    if-ne v10, v4, :cond_17

    if-le v2, v8, :cond_15

    const/4 v9, 0x1

    goto :goto_8

    :cond_15
    const/4 v9, 0x0

    :goto_8
    if-ne v13, v9, :cond_17

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_16

    iget v5, v5, Lg/ayb;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move-object/from16 v16, v1

    move v15, v5

    move-object/from16 v5, v17

    goto :goto_b

    :cond_16
    iget v4, v5, Lg/ayb;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move-object v5, v1

    move v8, v4

    move/from16 v9, v19

    move v4, v2

    goto :goto_b

    :cond_17
    :goto_a
    move-object/from16 v5, v17

    move/from16 v9, v19

    :goto_b
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v21

    goto/16 :goto_5

    :cond_18
    :goto_c
    if-eqz v16, :cond_19

    return-object v16

    :cond_19
    return-object v17
.end method

.method public final ak(Landroidx/recyclerview/widget/f;Lg/aqz;ZZ)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 p4, -0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move p4, p3

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->cj()V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2}, Lg/bjd;->p()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v3}, Lg/bjd;->r()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lg/yx;

    iget-object v7, v7, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v7, v6}, Lg/bjd;->k(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v7, v6}, Lg/bjd;->o(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    return-object v5
.end method

.method public final al(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lg/ayb;

    iget-object v1, v0, Lg/yx;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lg/ayb;->e:I

    iget v4, v0, Lg/ayb;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->at(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->g()I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/b;->du:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v1}, Lg/bjd;->g()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/b;->dq:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lg/yx;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/b;->ff(Landroid/view/View;IILg/yx;)Z

    move-result p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/b;->fk(Landroid/view/View;IILg/yx;)Z

    move-result p3

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final am(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ai()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ad()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->am(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final an(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cju;Lg/efd;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    iget v6, v5, Lg/bjd;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v5, v5, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v5, v5, Landroidx/recyclerview/widget/b;->dq:I

    goto :goto_0

    :pswitch_0
    iget-object v5, v5, Lg/bjd;->b:Landroidx/recyclerview/widget/b;

    iget v5, v5, Landroidx/recyclerview/widget/b;->du:I

    :goto_0
    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    aget v10, v10, v11

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-eqz v9, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ai()V

    :cond_2
    iget v11, v3, Lg/cju;->e:I

    if-ne v11, v6, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez v11, :cond_4

    iget v12, v3, Lg/cju;->c:I

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v12

    iget v13, v3, Lg/cju;->c:I

    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->t(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    const/4 v13, 0x0

    :goto_4
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ge v13, v14, :cond_8

    iget v14, v3, Lg/cju;->c:I

    if-ltz v14, :cond_8

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v15

    if-ge v14, v15, :cond_8

    if-lez v12, :cond_8

    iget v14, v3, Lg/cju;->c:I

    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->t(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v15

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-gt v15, v8, :cond_7

    sub-int/2addr v12, v15

    if-gez v12, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3, v1}, Lg/cju;->n(Landroidx/recyclerview/widget/f;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aput-object v8, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " requires "

    const-string v3, " spans but GridLayoutManager has only "

    const-string v4, "Item at position "

    invoke-static {v14, v15, v4, v2, v3}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const-string v4, " spans."

    invoke-static {v2, v3, v4}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    if-nez v13, :cond_9

    iput-boolean v6, v4, Lg/efd;->c:Z

    return-void

    :cond_9
    if-eqz v11, :cond_a

    move v14, v13

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-eq v12, v14, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lg/ayb;

    invoke-static {v7}, Landroidx/recyclerview/widget/b;->ed(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->t(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v7

    iput v7, v8, Lg/ayb;->f:I

    iput v6, v8, Lg/ayb;->e:I

    add-int/2addr v6, v7

    add-int/2addr v12, v15

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v2, v13, :cond_12

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aget-object v7, v7, v2

    iget-object v8, v3, Lg/cju;->b:Ljava/util/List;

    if-nez v8, :cond_d

    if-eqz v11, :cond_c

    const/4 v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v8, v12}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_c
    const/4 v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v12, v12}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_d
    const/4 v8, -0x1

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    const/4 v14, 0x1

    invoke-virtual {v0, v7, v8, v14}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    goto :goto_9

    :cond_e
    const/4 v14, 0x1

    invoke-virtual {v0, v7, v12, v14}, Landroidx/recyclerview/widget/b;->fc(Landroid/view/View;IZ)V

    :goto_9
    iget-object v8, v0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->c:Landroid/graphics/Rect;

    if-nez v8, :cond_f

    invoke-virtual {v14, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    :cond_f
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_a
    invoke-virtual {v0, v7, v5, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->al(Landroid/view/View;IZ)V

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v7}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v8

    if-le v8, v6, :cond_10

    move v6, v8

    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lg/ayb;

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v12, v7}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v7, v7, v12

    iget v8, v8, Lg/ayb;->f:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v8, v7, v1

    if-lez v8, :cond_11

    move v1, v7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    if-eqz v9, :cond_14

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->p(I)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v13, :cond_14

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aget-object v1, v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v14, 0x1

    invoke-virtual {v0, v1, v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->al(Landroid/view/View;IZ)V

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_13

    move v6, v1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_14
    const/4 v12, 0x0

    :goto_c
    if-ge v12, v13, :cond_18

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aget-object v1, v1, v12

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v1}, Lg/bjd;->q(Landroid/view/View;)I

    move-result v2

    if-eq v2, v6, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/ayb;

    iget-object v5, v2, Lg/yx;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lg/ayb;->e:I

    iget v9, v2, Lg/ayb;->f:I

    invoke-virtual {v0, v5, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->at(II)I

    move-result v5

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_15

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10, v8, v2, v9}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v2

    sub-int v5, v6, v7

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sub-int v8, v6, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v10, v7, v2, v9}, Landroidx/recyclerview/widget/b;->ef(IIIIZ)I

    move-result v5

    move v2, v8

    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lg/yx;

    invoke-virtual {v0, v1, v2, v5, v7}, Landroidx/recyclerview/widget/b;->ff(Landroid/view/View;IILg/yx;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_e

    :cond_16
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    :cond_17
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    iput v6, v4, Lg/efd;->b:I

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_1a

    iget v1, v3, Lg/cju;->g:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_19

    iget v12, v3, Lg/cju;->i:I

    sub-int v1, v12, v6

    move v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_10

    :cond_19
    iget v12, v3, Lg/cju;->i:I

    add-int v1, v12, v6

    move v3, v12

    const/4 v2, 0x0

    move v12, v1

    const/4 v1, 0x0

    goto :goto_10

    :cond_1a
    const/4 v8, -0x1

    iget v1, v3, Lg/cju;->g:I

    if-ne v1, v8, :cond_1b

    iget v12, v3, Lg/cju;->i:I

    sub-int v1, v12, v6

    move v2, v12

    :goto_f
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_10

    :cond_1b
    iget v12, v3, Lg/cju;->i:I

    add-int v1, v12, v6

    move v2, v1

    move v1, v12

    goto :goto_f

    :goto_10
    const/4 v7, 0x0

    :goto_11
    if-ge v7, v13, :cond_20

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lg/ayb;

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    iget v9, v6, Lg/ayb;->e:I

    sub-int/2addr v8, v9

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v5}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_12

    :cond_1c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v8, v6, Lg/ayb;->e:I

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v2, v5}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v9, v6, Lg/ayb;->e:I

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->br:Lg/bjd;

    invoke-virtual {v8, v5}, Lg/bjd;->i(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    move v12, v8

    :goto_12
    invoke-static {v5, v1, v3, v2, v12}, Landroidx/recyclerview/widget/b;->ec(Landroid/view/View;IIII)V

    iget-object v8, v6, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v6, v6, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    const/4 v14, 0x1

    goto :goto_13

    :cond_1f
    const/4 v14, 0x1

    goto :goto_14

    :goto_13
    iput-boolean v14, v4, Lg/efd;->d:Z

    :goto_14
    iget-boolean v6, v4, Lg/efd;->a:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lg/efd;->a:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_20
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->b:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ao(Landroid/view/ViewGroup$LayoutParams;)Lg/yx;
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lg/ayb;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lg/yx;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v2, v0, Lg/ayb;->e:I

    iput v1, v0, Lg/ayb;->f:I

    return-object v0

    :cond_0
    new-instance v0, Lg/ayb;

    invoke-direct {v0, p1}, Lg/yx;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, v0, Lg/ayb;->e:I

    iput v1, v0, Lg/ayb;->f:I

    return-object v0
.end method

.method public final ap(Lg/aqz;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ap(Lg/aqz;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->cz(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    :cond_0
    return-void
.end method

.method public final aq(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->aq(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ar(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/cea;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ai()V

    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Lg/aqz;->n:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Lg/cea;->d:I

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Lg/cea;->d:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lg/cea;->d:I

    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Lg/cea;->d:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Lg/cea;->d:I

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ad()V

    return-void
.end method

.method public final as(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->l:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->af()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->em()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Span count should be at least 1. Provided "

    invoke-static {p1, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final at(II)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ck()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final au()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {v0}, Lg/cgo;->af()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object v0, v0, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final av(Landroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final aw(Landroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lg/aqz;->p()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final ax(II)Ljava/util/HashSet;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, p2, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p2

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ay(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b;->ay(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->er()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/b;->eh(III)I

    move-result p1

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final az()Lg/yx;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lg/ayb;

    invoke-direct {v0, v2, v1}, Lg/ayb;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lg/ayb;

    invoke-direct {v0, v1, v2}, Lg/ayb;-><init>(II)V

    return-object v0
.end method

.method public final ba(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final bb(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->af()V

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object p1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    iget-boolean p3, p3, Lg/aqz;->n:Z

    if-nez p3, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p2, p1, p3}, Lg/cgo;->ae(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->t(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p2, p1, p3}, Lg/cgo;->ae(II)I

    move-result p1

    return p1
.end method

.method public final m(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ai()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ad()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final n(ILandroid/os/Bundle;)Z
    .locals 11

    sget-object v0, Lg/csk;->c:Lg/csk;

    invoke-virtual {v0}, Lg/csk;->o()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v0, :cond_32

    if-eq p1, v3, :cond_32

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_12

    :cond_2
    if-nez p2, :cond_3

    goto/16 :goto_12

    :cond_3
    const-string v0, "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_12

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_12

    :cond_5
    iget-object v0, p1, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/p;)I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v4

    if-ltz v0, :cond_37

    if-gez v4, :cond_7

    goto/16 :goto_12

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v5

    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ax(II)Ljava/util/HashSet;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    :cond_9
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    if-ne v5, v3, :cond_a

    move v5, v0

    :cond_a
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    if-ne v6, v3, :cond_b

    goto :goto_3

    :cond_b
    move v4, v6

    :goto_3
    const/16 v6, 0x42

    const/16 v7, 0x11

    if-eq p2, v7, :cond_1c

    const/16 v8, 0x21

    if-eq p2, v8, :cond_18

    if-eq p2, v6, :cond_12

    const/16 v8, 0x82

    if-eq p2, v8, :cond_c

    goto/16 :goto_12

    :cond_c
    add-int/2addr p1, v1

    :goto_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result v8

    if-ge p1, v8, :cond_11

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    if-ltz v8, :cond_11

    if-gez v9, :cond_d

    goto :goto_5

    :cond_d
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v10, v1, :cond_f

    if-le v8, v5, :cond_10

    if-eq v9, v4, :cond_e

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ax(II)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_e
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    goto/16 :goto_9

    :cond_f
    if-le v8, v5, :cond_10

    if-ne v9, v4, :cond_10

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    goto/16 :goto_9

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    const/4 p1, -0x1

    goto/16 :goto_9

    :cond_12
    add-int/2addr p1, v1

    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result v8

    if-ge p1, v8, :cond_11

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    if-ltz v8, :cond_11

    if-gez v9, :cond_13

    goto :goto_5

    :cond_13
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v10, v1, :cond_16

    if-ne v8, v5, :cond_14

    if-gt v9, v4, :cond_15

    :cond_14
    if-le v8, v5, :cond_17

    :cond_15
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    goto/16 :goto_9

    :cond_16
    if-le v9, v4, :cond_17

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    goto/16 :goto_9

    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_18
    sub-int/2addr p1, v1

    :goto_7
    if-ltz p1, :cond_11

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    if-ltz v8, :cond_11

    if-gez v9, :cond_19

    goto :goto_5

    :cond_19
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v10, v1, :cond_1a

    if-ge v8, v5, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ax(II)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    goto :goto_9

    :cond_1a
    if-ge v8, v5, :cond_1b

    if-ne v9, v4, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    goto :goto_9

    :cond_1b
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_1c
    sub-int/2addr p1, v1

    :goto_8
    if-ltz p1, :cond_11

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ba(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result v9

    if-ltz v8, :cond_11

    if-gez v9, :cond_1d

    goto/16 :goto_5

    :cond_1d
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v10, v1, :cond_20

    if-ne v8, v5, :cond_1e

    if-lt v9, v4, :cond_1f

    :cond_1e
    if-ge v8, v5, :cond_21

    :cond_1f
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    goto :goto_9

    :cond_20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    if-ge v9, v4, :cond_21

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    goto :goto_9

    :cond_21
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :goto_9
    if-ne p1, v3, :cond_31

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-nez v4, :cond_31

    if-ne p2, v7, :cond_29

    if-gez v0, :cond_23

    :cond_22
    :goto_a
    const/4 p1, -0x1

    goto/16 :goto_f

    :cond_23
    if-ne v4, v1, :cond_24

    goto :goto_a

    :cond_24
    new-instance p1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 p2, 0x0

    :goto_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result v4

    if-ge p2, v4, :cond_27

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_25

    goto :goto_a

    :cond_25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v0, :cond_28

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->af(I)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    goto :goto_f

    :cond_29
    if-ne p2, v6, :cond_31

    if-gez v0, :cond_2a

    goto :goto_a

    :cond_2a
    if-ne v4, v1, :cond_2b

    goto :goto_a

    :cond_2b
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    const/4 p2, 0x0

    :goto_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->en()I

    move-result v4

    if-ge p2, v4, :cond_2f

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ac(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2d

    goto/16 :goto_a

    :cond_2d
    invoke-virtual {p1, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_2e
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_2f
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_30

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:I

    iput v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:I

    :cond_31
    :goto_f
    if-eq p1, v3, :cond_37

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->dh(I)V

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:I

    return v1

    :cond_32
    const v0, 0x1020037

    if-ne p1, v0, :cond_38

    if-eqz p2, :cond_38

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, v3, :cond_37

    if-ne p2, v3, :cond_33

    goto :goto_12

    :cond_33
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_36

    iget-object v5, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, v4, v6, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {p0, v4, v7, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    if-ne v7, v1, :cond_34

    if-ne v5, p2, :cond_35

    if-ne v6, p1, :cond_35

    goto :goto_11

    :cond_34
    if-ne v5, p1, :cond_35

    if-ne v6, p2, :cond_35

    goto :goto_11

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_36
    const/4 v4, -0x1

    :goto_11
    if-le v4, v3, :cond_37

    invoke-virtual {p0, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->bw(II)V

    return v1

    :cond_37
    :goto_12
    return v2

    :cond_38
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final o(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 1

    iget-boolean p3, p3, Lg/aqz;->n:Z

    if-nez p3, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p2, p1, p3}, Lg/cgo;->_q(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->t(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    invoke-virtual {p2, p1, p3}, Lg/cgo;->_q(II)I

    move-result p1

    return p1
.end method

.method public final p(I)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    const/4 v5, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:[I

    return-void
.end method

.method public final q(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->da(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final r(Landroidx/recyclerview/widget/f;Lg/aqz;)V
    .locals 7

    iget-boolean v0, p2, Lg/aqz;->n:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->et()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/b;->eo(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lg/ayb;

    iget-object v5, v4, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v5

    iget v6, v4, Lg/ayb;->f:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, Lg/ayb;->e:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->r(Landroidx/recyclerview/widget/f;Lg/aqz;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final s(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ct(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final t(ILandroidx/recyclerview/widget/f;Lg/aqz;)I
    .locals 1

    iget-boolean p3, p3, Lg/aqz;->n:Z

    if-nez p3, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p2, p1}, Lg/cgo;->_r(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/f;->t(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p2, p1}, Lg/cgo;->_r(I)I

    move-result p1

    return p1
.end method

.method public final u(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->af()V

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object p1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->v(Landroidx/recyclerview/widget/f;Lg/aqz;Lg/fnz;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lg/fnz;->j(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/b;->dw:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    sget-object p1, Lg/csk;->c:Lg/csk;

    invoke-virtual {p3, p1}, Lg/fnz;->k(Lg/csk;)V

    :cond_0
    return-void
.end method

.method public final w(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->da(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final x(Lg/aqz;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ct(Lg/aqz;)I

    move-result p1

    return p1
.end method

.method public final y(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    invoke-virtual {p1}, Lg/cgo;->af()V

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iget-object p1, p1, Lg/cgo;->ab:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final z(Landroidx/recyclerview/widget/f;Lg/aqz;Landroid/view/View;Lg/fnz;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lg/ayb;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/b;->eu(Landroid/view/View;Lg/fnz;)V

    return-void

    :cond_0
    check-cast v0, Lg/ayb;

    iget-object p3, v0, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/p;->ag()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->bc(ILandroidx/recyclerview/widget/f;Lg/aqz;)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->bm:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p2, v0, Lg/ayb;->e:I

    iget v0, v0, Lg/ayb;->f:I

    invoke-static {p2, v0, p1, v1, p3}, Lg/fc;->f(IIIIZ)Lg/fc;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/fnz;->l(Lg/fc;)V

    return-void

    :cond_1
    iget p2, v0, Lg/ayb;->e:I

    iget v0, v0, Lg/ayb;->f:I

    invoke-static {p1, v1, p2, v0, p3}, Lg/fc;->f(IIIIZ)Lg/fc;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/fnz;->l(Lg/fc;)V

    return-void
.end method
