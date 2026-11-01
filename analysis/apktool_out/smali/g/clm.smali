.class public Lg/clm;
.super Lg/fji;
.source "SourceFile"


# instance fields
.field public final b:F

.field public final c:Landroid/graphics/drawable/GradientDrawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lg/clm;->e:I

    const v0, 0x7f0801a2

    invoke-static {p1, v0}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lg/clm;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070445

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lg/clm;->b:F

    const v0, 0x7f0801a3

    invoke-static {p1, v0}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lg/clm;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v3

    instance-of v3, v3, Lg/dbv;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object v3

    check-cast v3, Lg/dbv;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v3, v7}, Lg/clm;->f(Lg/dbv;I)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v3, v8}, Lg/clm;->f(Lg/dbv;I)Z

    move-result v8

    iget v9, v0, Lg/clm;->b:F

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v3, v7}, Lg/clm;->f(Lg/dbv;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x0

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v10, v10, Landroid/graphics/drawable/RippleDrawable;

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v4, 0x8

    const/16 v18, 0x1

    if-nez v10, :cond_4

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    goto :goto_2

    :cond_4
    new-array v10, v4, [F

    aput v8, v10, v17

    aput v8, v10, v18

    aput v8, v10, v16

    aput v8, v10, v15

    aput v9, v10, v14

    aput v9, v10, v13

    aput v9, v10, v12

    aput v9, v10, v11

    const/16 v19, 0x7

    const v11, 0x7f09007c

    const/16 v20, 0x6

    invoke-virtual {v6, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    const/16 v21, 0x5

    instance-of v13, v12, [F

    if-eqz v13, :cond_5

    check-cast v12, [F

    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/RippleDrawable;

    const v13, 0x102002e

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v13, v12, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v13, :cond_6

    check-cast v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v6, v11, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v10, v0, Lg/clm;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    new-array v4, v4, [F

    aput v8, v4, v17

    aput v8, v4, v18

    aput v8, v4, v16

    aput v8, v4, v15

    aput v9, v4, v14

    aput v9, v4, v21

    aput v9, v4, v20

    aput v9, v4, v19

    iget-object v8, v0, Lg/clm;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v4

    add-int/2addr v14, v11

    invoke-virtual {v8, v9, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v7, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v0, Lg/clm;->e:I

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v10, v7, v9, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_5
    return-void
.end method

.method public f(Lg/dbv;I)Z
    .locals 1

    if-ltz p2, :cond_1

    iget-object v0, p1, Lg/dbv;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lg/dbv;->f(I)Lg/cng;

    move-result-object p1

    instance-of p2, p1, Lg/edn;

    if-nez p2, :cond_1

    instance-of p1, p1, Lg/dpj;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lg/aqz;)V
    .locals 0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object p4

    instance-of p4, p4, Lg/dbv;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m;

    move-result-object p4

    check-cast p4, Lg/dbv;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p4, p2}, Lg/clm;->f(Lg/dbv;I)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p4, p2}, Lg/clm;->f(Lg/dbv;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lg/clm;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
