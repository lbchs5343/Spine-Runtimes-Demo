.class public Lcom/bytedance/sdk/openadsdk/core/widget/fw;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Landroid/content/Context;

.field private ox:Z

.field private p:Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tt_dialog_full"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->mn(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->ox:Z

    return-void
.end method

.method private d()Landroid/view/View;
    .locals 14

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u60a8\u8981\u8bbf\u95ee\u7684\u7f51\u7ad9\u5b58\u5728\u98ce\u9669"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "\u7ee7\u7eed\u8bbf\u95ee\u53ef\u80fd\u5bfc\u81f4\u4e2a\u4eba\u9690\u79c1\u6cc4\u6f0f\u3001\u8d26\u53f7\u88ab\u76d7\u7528\u7b49\u5371\u5bb3"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v9

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->ox:Z

    const/high16 v11, 0x43660000    # 230.0f

    if-nez v10, :cond_0

    new-instance v10, Landroid/widget/Button;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v12, -0x777778

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v12, "\u7ee7\u7eed\u8bbf\u95ee"

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v6, v9, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-static {v13, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v12, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;

    invoke-direct {v12, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v10, Landroid/widget/Button;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v12, -0x10000

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    invoke-static {v13, v11}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v12, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u8fd4\u56de\u5b89\u5168\u94fe\u63a5"

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v10, v6, v9, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/fw$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/fw;)Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->p:Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;

    return-object p0
.end method

.method private dq()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->p:Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->p:Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/fw$dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/fw;->dq()V

    return-void
.end method
