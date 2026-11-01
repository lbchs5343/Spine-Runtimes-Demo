.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;


# instance fields
.field protected d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private f:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

.field private fw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private ia:Landroid/view/ViewGroup;

.field private ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ig/s;

.field private jy:Lg/fde;

.field private kk:Lg/dlv;

.field private mn:Landroid/app/Activity;

.field private mp:Ljava/lang/String;

.field private no:Lorg/json/JSONObject;

.field private o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

.field protected p:Ljava/lang/String;

.field private q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

.field protected s:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->fw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ia:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ia:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->p()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ox()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(F)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;->ox()V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    invoke-static {v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Lorg/json/JSONObject;)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->no:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Lorg/json/JSONObject;)V

    return-void
.end method

.method private d(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ia()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ig;->d()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    :cond_0
    return-void
.end method

.method private d(Lg/fzc;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/ig/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lcom/bytedance/sdk/openadsdk/core/r/ox;)Lcom/bytedance/sdk/openadsdk/core/r/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lg/dlv;)Lg/dlv;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->kk:Lg/dlv;

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->p()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ox()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->dq(F)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ip()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;->ox()V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    invoke-static {v1, p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Z)V

    return-void
.end method

.method private dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method

.method private dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->p(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->jy:Lg/fde;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->jy:Lg/fde;

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/cdf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const-string p1, "tt_mute"

    goto :goto_0

    :cond_1
    const-string p1, "tt_unmute"

    :goto_0
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/cdf;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private ia()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mp:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/jy;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->fw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->iw(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    return-object p0
.end method

.method private iw()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->no:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "download_buttons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private kk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V

    :cond_0
    return-void
.end method

.method private mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/s;->kk()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    invoke-static {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s()V

    return-void
.end method

.method private ox(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->no()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ig()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;)V

    return-void
.end method

.method private ox(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Z)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mp:Ljava/lang/String;

    return-object p0
.end method

.method private p(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is_support_func_desc"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->iw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz p1, :cond_1

    const/4 v0, -0x4

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :catchall_0
    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;

    const-string v1, "tt_pl_download_check"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method private p(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ia()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v3, "embeded_ad_landingpage"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox(Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->gh(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->d(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/r/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    return-object p0
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->kk:Lg/dlv;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->s(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->kk:Lg/dlv;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    instance-of v1, v0, Lg/fde;

    if-eqz v1, :cond_1

    check-cast v0, Lg/fde;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->jy:Lg/fde;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v3, "#99333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->jy:Lg/fde;

    invoke-virtual {v1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lg/cdf;

    invoke-virtual {v1, v0}, Lg/cdf;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ia:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Z)V

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->yy()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->s:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ig/s;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jy()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jy()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->no()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/le/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/le/d$dq;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dlv;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public dq(Lg/fzc;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Lg/fzc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "openInfringement"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "openAppPolicy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "muteVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "downloadDirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "downloadEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "openAppFunctionDesc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "clickVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "openAppPermission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->mn:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->jy:Lg/fde;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->d()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Z)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lg/fzc;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Z)V

    return-void

    :pswitch_4
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Z)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->d(Lg/fzc;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->p(Z)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->ha()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_a
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_7
        -0x2ed26c2d -> :sswitch_6
        -0x1b5c2c60 -> :sswitch_5
        0x78cef2 -> :sswitch_4
        0xc3aca91 -> :sswitch_3
        0x44a639e2 -> :sswitch_2
        0x49c19b89 -> :sswitch_1
        0x4a82dfbc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->q:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->xz()V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    return-void
.end method
