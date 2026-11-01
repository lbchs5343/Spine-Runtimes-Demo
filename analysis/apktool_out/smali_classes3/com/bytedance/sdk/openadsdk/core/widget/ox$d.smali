.class Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/ox;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p3, p3, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    const-string v7, "#161823"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v9, 0x41980000    # 19.0f

    invoke-static {v5, v9}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, p3, v5, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v4, v9}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v9, 0x3

    invoke-virtual {v5, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x5

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v5, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const-string v10, "tt_open_app_detail_list_item"

    invoke-static {v4, v10}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/ox;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/ox;->dq:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v5, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v5, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d;)V

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->d(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p3, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->d(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/widget/ox$d$dq;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ox$ox;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
