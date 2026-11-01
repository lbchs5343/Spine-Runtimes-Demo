.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Landroid/content/Context;

.field private ia:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field private kk:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/f/d/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field private mn:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Handler;

.field private ox:Landroid/widget/FrameLayout;

.field private p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

.field private s:Lcom/bytedance/sdk/openadsdk/core/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->o:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox()V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->mn:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vb()I

    move-result p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setAdType(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ia:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private ox()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->o:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->d()V

    :cond_0
    return-void
.end method

.method public dq()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public dq(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/iw;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/s;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    :cond_4
    return-void
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/d;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->kk:Ljava/lang/ref/SoftReference;

    :cond_0
    new-instance p4, Ljava/lang/ref/SoftReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->mn:Ljava/lang/ref/SoftReference;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "splash_show_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x4

    invoke-direct {p2, p4, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const-class p4, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->kk:Ljava/lang/ref/SoftReference;

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-direct {p0, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :goto_0
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$1;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    :cond_2
    return-void
.end method

.method public dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ia:Ljava/lang/ref/SoftReference;

    if-eqz p4, :cond_0

    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->kk:Ljava/lang/ref/SoftReference;

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "splash_show_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x4

    invoke-direct {p2, p4, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const-class p4, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->kk:Ljava/lang/ref/SoftReference;

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->ox:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-direct {p0, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :goto_0
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/o;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    :cond_2
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox;->dq(Z)V

    :cond_0
    return-void
.end method
