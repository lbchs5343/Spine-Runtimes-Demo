.class public Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field private d:I

.field private dq:I

.field private ia:Landroid/graphics/drawable/Drawable;

.field private iw:F

.field private kk:Landroid/graphics/drawable/Drawable;

.field private mn:Landroid/graphics/drawable/Drawable;

.field private ox:I

.field private p:F

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ox:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq(Landroid/content/Context;)V

    return-void
.end method

.method private dq(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private dq(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v0, "tt_star_empty_bg"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->mn:Landroid/graphics/drawable/Drawable;

    const-string v1, "tt_star_full_bg"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ia:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->kk:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->p:F

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->s:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->iw:F

    return-void
.end method

.method private getStarImageView()Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->p:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->s:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->iw:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public dq()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarFillNum()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarHalfNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarHalfDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarEmptyNum()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->mn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarEmptyNum()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ox:I

    return v0
.end method

.method public getStarFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ia:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarFillNum()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq:I

    return v0
.end method

.method public getStarHalfDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->kk:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarHalfNum()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->d:I

    return v0
.end method

.method public getStarImageHeight()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->s:F

    return v0
.end method

.method public getStarImagePadding()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->iw:F

    return v0
.end method

.method public getStarImageWidth()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->p:F

    return v0
.end method

.method public setStarEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->mn:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarEmptyNum(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ox:I

    return-void
.end method

.method public setStarFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->ia:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarFillNum(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->dq:I

    return-void
.end method

.method public setStarHalfDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->kk:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarHalfNum(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->d:I

    return-void
.end method

.method public setStarImageHeight(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->s:F

    return-void
.end method

.method public setStarImagePadding(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->iw:F

    return-void
.end method

.method public setStarImageWidth(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/widget/TTRatingBar;->p:F

    return-void
.end method
