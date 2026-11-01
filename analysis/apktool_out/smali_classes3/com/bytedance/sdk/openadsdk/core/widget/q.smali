.class public Lcom/bytedance/sdk/openadsdk/core/widget/q;
.super Lcom/bytedance/sdk/openadsdk/core/widget/s;


# instance fields
.field private ia:Z

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;

.field private volatile mn:Z

.field ox:Landroid/view/Window;

.field private p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

.field private s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ox:Landroid/view/Window;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/q;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->mn:Z

    return p1
.end method

.method private iw()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ugen_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ugen_md5"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    const/16 v1, 0xb

    const-string v2, "uegnTemplate is empty"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->mn:Z

    return-void

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/q$1;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/q$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/q;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private mn()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "reg_number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "icon_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "developer_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "score"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(F)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "creative_tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s:Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ox:Landroid/view/Window;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ox:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ox:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ox:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;)Lcom/bytedance/sdk/openadsdk/core/widget/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/s$dq;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ia:Z

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->dq()V

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/q;->mn()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/q;->s()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/q;->iw()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public ox()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->ia:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->ox()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/s;->show()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/q;->mn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
