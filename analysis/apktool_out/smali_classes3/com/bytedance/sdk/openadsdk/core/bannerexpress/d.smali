.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# instance fields
.field private cd:Z

.field protected final d:Landroid/content/Context;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

.field private e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fw:Ljava/lang/Double;

.field private gh:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ig:Lcom/bytedance/sdk/component/utils/e;

.field protected iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private jy:Ljava/lang/String;

.field private volatile k:Landroid/view/View;

.field private kx:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private le:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;",
            ">;"
        }
    .end annotation
.end field

.field private mp:I

.field private no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

.field private o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected p:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private q:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

.field private wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>()V

    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->fw:Ljava/lang/Double;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->cd:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->gh:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->p:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object p0
.end method

.method private d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->o:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->le()Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "openPlayableLandingPage"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;ZLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->q:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Landroid/app/Dialog;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-direct {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    :cond_0
    return-void
.end method

.method private dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mp()V

    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ig()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;

    const-string v1, "banner_express_register_download"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_0
    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->le:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private jy()V
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->p:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$d;

    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;)V

    const/16 v7, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/r/dq/d/dq/iw;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;I)V

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->q()V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->f:Ljava/util/Queue;

    return-object p0
.end method

.method private mp()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->k:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mp:I

    int-to-long v1, v1

    const v3, 0x1b649

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig()V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->fw:Ljava/lang/Double;

    return-object p0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->kx:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->fw:Ljava/lang/Double;

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    return-object p1
.end method

.method public dq(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "slide_banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->setDuration(I)V

    const/16 v0, 0x7530

    if-ge p1, v0, :cond_1

    const/16 p1, 0x7530

    goto :goto_0

    :cond_1
    const v0, 0x1d4c0

    if-le p1, v0, :cond_2

    const p1, 0x1d4c0

    :cond_2
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mp:I

    new-instance p1, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->q:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x1b649

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->k:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->kx:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/d/ox;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vb()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->k:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    invoke-direct {v1, v5, p2, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->cd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->cd:Z

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->gh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->gh:Z

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public ia()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ez()Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;-><init>()V

    return-object v0
.end method

.method public mn()V
    .locals 0

    return-void
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->s()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    return-void
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->p()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig:Lcom/bytedance/sdk/component/utils/e;

    :cond_1
    return-void
.end method
