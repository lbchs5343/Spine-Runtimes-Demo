.class public abstract Lcom/bytedance/sdk/component/adexpress/s/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/no;
.implements Lcom/bytedance/sdk/component/adexpress/d/p;
.implements Lcom/bytedance/sdk/component/adexpress/dq;
.implements Lcom/bytedance/sdk/component/adexpress/theme/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/d/no;",
        "Lcom/bytedance/sdk/component/adexpress/d/p<",
        "Lcom/bytedance/sdk/component/widget/SSWebView;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/dq;",
        "Lcom/bytedance/sdk/component/adexpress/theme/dq;"
    }
.end annotation


# instance fields
.field protected d:Z

.field protected dq:Lorg/json/JSONObject;

.field private f:Z

.field private ia:Ljava/lang/String;

.field private ig:Lcom/bytedance/sdk/component/adexpress/d/ia;

.field protected iw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jy:I

.field private kk:Ljava/lang/String;

.field private mn:Landroid/content/Context;

.field private mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

.field private no:Z

.field private volatile o:Lcom/bytedance/sdk/component/adexpress/d/mn;

.field protected ox:Lcom/bytedance/sdk/component/widget/SSWebView;

.field protected p:I

.field private q:Z

.field protected s:Lcom/bytedance/sdk/component/adexpress/dq/ox/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/d/mp;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->no:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->p:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->f:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ia:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->dq(Lcom/bytedance/sdk/component/adexpress/theme/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->dq()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->ig()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->no:Z

    return-void
.end method

.method private d(Landroid/app/Activity;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ig()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->no:Z

    :cond_2
    return-void
.end method

.method private mp()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->wp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->wp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/s;->d(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/s;->ox(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public abstract d(I)V
.end method

.method public dq()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public dq(FF)V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->ia()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/p/mn;->dq(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mn:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/adexpress/p/mn;->dq(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->jy:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->jy:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->p()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ig:Lcom/bytedance/sdk/component/adexpress/d/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/d/ia;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ig:Lcom/bytedance/sdk/component/adexpress/d/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/adexpress/d/ia;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;I)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ig:Lcom/bytedance/sdk/component/adexpress/d/ia;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V
    .locals 6

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/p;->dq()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr p1, v2

    :cond_2
    const/16 v2, 0x66

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSWebview null is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " or Webview is null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->kk:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    const-string v0, "url is empty"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->wp()Z

    move-result p1

    const-string v3, "data null is "

    const/16 v4, 0x67

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->f:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->dq(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->f:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->ox(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "choice ad data null is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    if-nez v3, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox()I

    move-result p1

    const/16 v5, 0x9

    if-ne p1, v5, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->d(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq:Lorg/json/JSONObject;

    if-nez v3, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->no:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->d(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->no:Z

    if-eqz p1, :cond_c

    :try_start_0
    const-string p1, "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();"

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->kk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->mn()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/no;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/s;->s(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load exception is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->kk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->mn()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->kk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 6

    const/16 v0, 0x69

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    const-string v1, "renderResult is null"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->ox()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->p()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->s()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_1

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->d:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;FF)V

    return-void

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/s/dq$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/s/dq$1;-><init>(Lcom/bytedance/sdk/component/adexpress/s/dq;Lcom/bytedance/sdk/component/adexpress/d/q;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/q;FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->d:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->no()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(ZI)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->q:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(FF)V

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->p:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/s/dq;->d(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->o:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    :cond_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/adexpress/s/s;->s(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->no()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/q;->o()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->kk:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->q:Z

    return-void
.end method

.method public dq(ZI)V
    .locals 0

    return-void
.end method

.method public ia()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->kk()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/d;->dq(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->d(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->jy:I

    :cond_0
    return-void
.end method

.method public abstract iw()V
.end method

.method public kk()V
    .locals 0

    return-void
.end method

.method public synthetic mn()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->d()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/component/adexpress/d/mp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->mp:Lcom/bytedance/sdk/component/adexpress/d/mp;

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public ox()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->q()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/s/dq;->ox:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/s/s;->s(Lcom/bytedance/sdk/component/widget/SSWebView;)Z

    return-void
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/s/dq;->dq()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
