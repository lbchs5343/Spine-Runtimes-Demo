.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg/cyx;
.implements Lg/ahr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

.field private dq:Landroid/content/Context;

.field private iw:Ljava/lang/String;

.field private mn:I

.field private ox:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;

.field private s:Lg/ahr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ig/s;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->iw:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->mn:I

    return-void
.end method

.method private d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 2

    new-instance v0, Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/ajp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lg/ajp;->n(Lorg/json/JSONObject;)Lg/dlv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->ox:Lg/dlv;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "ugeno render fail"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_2

    const-string p1, ""

    invoke-interface {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_1
    iput-object p0, v0, Lg/ajp;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lg/ajp;->s(Lg/cyx;)V

    invoke-virtual {v0, p2}, Lg/ajp;->r(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->d:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(J)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->ox:Lg/dlv;

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;->dq(Lg/dlv;)V

    :cond_2
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;

    return-void
.end method

.method public dq(Lg/ahr;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->s:Lg/ahr;

    return-void
.end method

.method public dq(Lg/dlv;Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->s:Lg/ahr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lg/ahr;->dq(Lg/dlv;Landroid/view/MotionEvent;)V

    :cond_0
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

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$dq;->dq(Lg/fzc;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
