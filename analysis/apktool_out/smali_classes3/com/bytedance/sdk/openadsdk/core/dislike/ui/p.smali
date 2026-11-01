.class public Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;,
        Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;
    }
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    return-void
.end method

.method private d()Landroid/widget/TextView;
    .locals 6

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    invoke-interface {v2, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-interface {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "#0A161823"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#BF161823"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method

.method private dq(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private dq()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    const-string v0, "#FDE6E6E6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#FDFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$dq;

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/res/p;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7a06fff6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->dq:Landroid/widget/TextView;

    const v0, 0x7a06fff5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->d:Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->dq:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->iw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->d:Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->p()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->d()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;

    invoke-direct {v5, p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->d:Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->d:Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p3

    :cond_2
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->dq:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p;->dq()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/p$d;->d:Lcom/bytedance/sdk/openadsdk/widget/FlowLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p3
.end method
