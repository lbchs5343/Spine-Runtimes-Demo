.class public Lcom/bytedance/sdk/openadsdk/core/widget/kk;
.super Landroid/app/AlertDialog;


# instance fields
.field private d:Lorg/json/JSONObject;

.field private dq:Lorg/json/JSONObject;

.field private ia:Z

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

.field private ox:Landroid/content/Context;

.field private p:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    const-string v0, "tt_dialog_full"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/r;->mn(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->ox:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->dq:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->d:Lorg/json/JSONObject;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

    invoke-direct {p1, p2, p6}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->dq:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->ia:Z

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->ox:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->dq:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->d:Lorg/json/JSONObject;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/kk$1;

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/kk;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/kk;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/kk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->ia:Z

    return p1
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->s:Ljava/lang/String;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->p:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->p:Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ia$dq;->ox(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->d()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/kk;->ia:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
