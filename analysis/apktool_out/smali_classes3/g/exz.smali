.class public final Lg/exz;
.super Lg/fji;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/graphics/Paint;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/exz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lg/exz;->c:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lg/exz;->d:Ljava/lang/Object;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lcn/trinea/android/lib/alliance/view/UsefulAppsRecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/exz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/exz;->d:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lg/exz;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final ak(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lg/aqz;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lg/exz;->b:I

    iget-object v3, v0, Lg/exz;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const v2, 0x7f04011d

    invoke-static {v2, v1}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v2

    iget-object v10, v0, Lg/exz;->c:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x414c0000    # 12.75f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    check-cast v3, Lcn/trinea/android/lib/alliance/view/UsefulAppsRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v6, v2, v5

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    invoke-virtual/range {p3 .. p3}, Lg/aqz;->p()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v5, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float v9, v3, v5

    sub-float v7, v9, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v3, v6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070132

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v5, v0, Lg/exz;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bdw;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lg/afr;->a:Ljava/lang/ThreadLocal;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sub-float/2addr v3, v6

    const v7, -0xff01

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    const v9, -0xffff01

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v6

    add-float/2addr v10, v8

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v6

    add-float/2addr v11, v8

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v6

    add-float/2addr v12, v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    add-float/2addr v3, v7

    float-to-int v6, v10

    float-to-int v7, v11

    float-to-int v8, v12

    float-to-int v3, v3

    invoke-static {v6, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v3, v3, Lcom/google/android/material/carousel/CarouselLayoutManager;->b:Lg/cph;

    iget v6, v3, Lg/cph;->b:I

    packed-switch v6, :pswitch_data_1

    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->fd()I

    move-result v3

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x0

    :goto_3
    int-to-float v13, v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v3, v3, Lcom/google/android/material/carousel/CarouselLayoutManager;->b:Lg/cph;

    iget v6, v3, Lg/cph;->b:I

    packed-switch v6, :pswitch_data_2

    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v6, v3, Landroidx/recyclerview/widget/b;->dn:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->er()I

    move-result v3

    sub-int/2addr v6, v3

    goto :goto_4

    :pswitch_2
    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v6, v3, Landroidx/recyclerview/widget/b;->dn:I

    :goto_4
    int-to-float v15, v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_3
    move-object/from16 v16, v5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v3, v3, Lcom/google/android/material/carousel/CarouselLayoutManager;->b:Lg/cph;

    iget v5, v3, Lg/cph;->b:I

    packed-switch v5, :pswitch_data_3

    const/4 v3, 0x0

    goto :goto_5

    :pswitch_3
    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->eq()I

    move-result v3

    :goto_5
    int-to-float v12, v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/b;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget-object v3, v3, Lcom/google/android/material/carousel/CarouselLayoutManager;->b:Lg/cph;

    iget v5, v3, Lg/cph;->b:I

    packed-switch v5, :pswitch_data_4

    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v3, v3, Landroidx/recyclerview/widget/b;->do:I

    goto :goto_6

    :pswitch_4
    iget-object v3, v3, Lg/cph;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v5, v3, Landroidx/recyclerview/widget/b;->do:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->fj()I

    move-result v3

    sub-int v3, v5, v3

    :goto_6
    int-to-float v14, v3

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_7
    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
