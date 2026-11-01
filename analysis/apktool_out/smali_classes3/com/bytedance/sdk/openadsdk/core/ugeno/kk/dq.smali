.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;
.implements Lg/ahr;


# instance fields
.field private d:Landroid/view/ViewGroup;

.field private dq:Landroid/content/Context;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

.field private kk:Lorg/json/JSONObject;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

.field private p:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private s:Lg/dlv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lg/dlv;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->s:Lg/dlv;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;Lg/dlv;)Lg/dlv;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->s:Lg/dlv;

    return-object p1
.end method

.method private dq(Lg/fzc;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "clickEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "openPolicy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/d/d;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lg/fzc;->b:Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->d:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->kk:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/webview/PageWebView;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/mn;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn;->dq(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/le/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;Lcom/bytedance/sdk/openadsdk/core/le/d$d;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Landroid/webkit/DownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->kk:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/webview/PageWebView;->dq(Lorg/json/JSONObject;Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    return-void
.end method

.method public dq(Lg/dlv;Landroid/view/MotionEvent;)V
    .locals 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->dq(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    return-void
.end method

.method public dq(Lg/fzc;Lg/dvh;Lg/eho;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Lg/fzc;->c:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p1, Lg/fzc;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq(Lg/fzc;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->o:Ljava/util/Map;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->p:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->kk:Lorg/json/JSONObject;

    new-instance v2, Lg/dmm;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->dq:Landroid/content/Context;

    iput-object v3, v2, Lg/dmm;->a:Landroid/content/Context;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "key_reward_page"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;->o:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, Lg/dmm;->c:Ljava/util/HashMap;

    iput-object v2, v0, Lg/ajp;->a:Lg/dmm;

    iget-object v2, v2, Lg/dmm;->b:Lorg/json/JSONObject;

    iput-object v2, v0, Lg/ajp;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lg/ajp;->s(Lg/cyx;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk/dq;Lg/ajp;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
