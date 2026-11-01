.class public Lcom/bytedance/sdk/component/widget/SSWebView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/bytedance/sdk/component/mp/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/SSWebView$dq;,
        Lcom/bytedance/sdk/component/widget/SSWebView$d;,
        Lcom/bytedance/sdk/component/widget/SSWebView$ox;
    }
.end annotation


# instance fields
.field private bl:Lcom/bytedance/sdk/component/widget/SSWebView$ox;

.field private cd:Lcom/bytedance/sdk/component/utils/i;

.field private d:Ljava/lang/String;

.field private dq:Lcom/bytedance/sdk/component/widget/d/dq;

.field private e:Lorg/json/JSONObject;

.field private f:I

.field private fw:Lcom/bytedance/sdk/component/widget/SSWebView$d;

.field private gh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ia:J

.field private ig:F

.field private iw:F

.field private ji:Lcom/bytedance/sdk/component/widget/dq;

.field private jy:I

.field private k:Lorg/json/JSONObject;

.field private kk:J

.field private kx:J

.field private le:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mn:J

.field private mp:F

.field private no:Landroid/webkit/WebView;

.field private o:Z

.field private ox:Lorg/json/JSONObject;

.field private p:Z

.field private q:F

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:F

.field private wp:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->ox(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->s:F

    iput v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->iw:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mn:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ia:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->kk:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->o:Z

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ig:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->q:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->le:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$1;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ox(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/widget/SSWebView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    return-object p0
.end method

.method private d(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(Z)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ig:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mp:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->ox(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->q:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->d(F)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->wp:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->ox(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->d(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->jy:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->f:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    new-instance p2, Lcom/bytedance/sdk/component/widget/SSWebView$48;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$48;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->ox()V

    return-void
.end method

.method private static d(Landroid/view/View;)Z
    .locals 3

    const-string v0, "androidx.viewpager.widget.ViewPager"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return v1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->kx:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/component/widget/dq;)Lcom/bytedance/sdk/component/widget/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ji:Lcom/bytedance/sdk/component/widget/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->h:Ljava/util/List;

    return-object p1
.end method

.method private dq(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->dq:Lcom/bytedance/sdk/component/widget/d/dq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v1, "start_x"

    iget v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->s:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v1, "start_y"

    iget v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->iw:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v1, "offset_x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->s:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v1, "offset_y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->iw:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v0, "tag"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ia:J

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7b06fffe

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v0, "down_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mn:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    const-string v0, "up_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ia:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/widget/dq/dq;->dq()Lcom/bytedance/sdk/component/widget/dq/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/dq/dq;->d()Lcom/bytedance/sdk/component/widget/dq/d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->kk:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mn:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iput-wide v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->kk:J

    invoke-static {}, Lcom/bytedance/sdk/component/widget/dq/dq;->dq()Lcom/bytedance/sdk/component/widget/dq/dq;

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->iw:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mn:J

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ox:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7b06ffff    # 7.0096E35f

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ig()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->p(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    return-void
.end method

.method private static dq(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ig()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    const v1, 0x7b06fffd

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private mp()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static ox(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/widget/SSWebView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->h:Ljava/util/List;

    return-object p0
.end method

.method private static ox(Landroid/view/View;)Z
    .locals 3

    const-string v0, "androidx.core.view.ScrollingView"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return v1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/component/widget/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ji:Lcom/bytedance/sdk/component/widget/dq;

    return-object p0
.end method

.method private p(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->s(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->q()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->mp()V

    return-void
.end method

.method private q()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/component/widget/SSWebView$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->bl:Lcom/bytedance/sdk/component/widget/SSWebView$ox;

    return-object p0
.end method

.method private static s(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setJavaScriptEnabled(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public aa_()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$26;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$26;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ab_()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$3;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$11;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$11;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$21;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$21;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->bl:Lcom/bytedance/sdk/component/widget/SSWebView$ox;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView$ox;->dq(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dq(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ox(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public dq(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dq()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$20;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$20;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->fw:Lcom/bytedance/sdk/component/widget/SSWebView$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$d;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->le:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(IZ)V

    return-void
.end method

.method public dq(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$14;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$49;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$49;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$19;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$4;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContentHeight()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMaterialMeta()Lcom/bytedance/sdk/component/widget/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->dq:Lcom/bytedance/sdk/component/widget/d/dq;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    nop

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ji:Lcom/bytedance/sdk/component/widget/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/dq;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewCreateDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->kx:J

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ia()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$18;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$18;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public kk()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$40;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$40;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public mn()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$5;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$41;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$41;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->le:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(IZ)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_1
    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->s()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->no:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$42;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$42;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView$2;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$39;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$39;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$44;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$44;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$45;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$45;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$38;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$38;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;F)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$22;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$22;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$10;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$10;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$43;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$43;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$28;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$28;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$17;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$17;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCalculationMethod(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->jy:I

    return-void
.end method

.method public setCalculationTwistMethod(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->f:I

    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$35;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$35;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeepShakeValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->mp:F

    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$33;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$33;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$32;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$32;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$16;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$16;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$27;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$27;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$8;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$8;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/DownloadListener;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsPreventTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->o:Z

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$25;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$25;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$15;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$15;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLandingPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->p:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$12;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;ILandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$29;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$29;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$30;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$30;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/component/widget/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->dq:Lcom/bytedance/sdk/component/widget/d/dq;

    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$47;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$47;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMixedContentMode(I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$34;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$34;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$37;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$37;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnShakeListener(Lcom/bytedance/sdk/component/widget/SSWebView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->fw:Lcom/bytedance/sdk/component/widget/SSWebView$d;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$13;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$13;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecycler(Z)V
    .locals 0

    return-void
.end method

.method public setSavePassword(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$46;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$46;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShakeInteractConf(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->wp:Lorg/json/JSONObject;

    return-void
.end method

.method public setShakeValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->ig:F

    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$23;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$23;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->d:Ljava/lang/String;

    return-void
.end method

.method public setTouchStateListener(Lcom/bytedance/sdk/component/widget/SSWebView$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->bl:Lcom/bytedance/sdk/component/widget/SSWebView$ox;

    return-void
.end method

.method public setTwistConfig(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->k:Lorg/json/JSONObject;

    return-void
.end method

.method public setTwistInteractConf(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$24;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$24;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$31;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$31;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$36;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$36;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$9;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$9;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebChromeClient;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$7;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebViewClient;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWriggleValue(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView;->q:F

    return-void
.end method
