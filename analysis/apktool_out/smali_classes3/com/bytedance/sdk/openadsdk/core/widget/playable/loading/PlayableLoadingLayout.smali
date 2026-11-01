.class public Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected d:Landroid/widget/TextView;

.field protected dq:Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;

.field protected ox:Landroid/widget/TextView;

.field protected p:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->p:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dq()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/res/s;->ia(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7e06fee8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->dq:Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;->getProgressBar()Landroid/view/View;

    move-result-object p1

    const-string v0, "#FC625C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7e06ffdf

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->d:Landroid/widget/TextView;

    const p1, 0x7e06ff13

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->ox:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->p:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "button_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->ox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBtnPlayOnClickListener(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->ox:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBtnPlayOnTouchListener(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->ox:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    const/16 p1, 0x64

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->dq:Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/widget/TTLoadingProgressBar;->setProgress(I)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "%d%%"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
