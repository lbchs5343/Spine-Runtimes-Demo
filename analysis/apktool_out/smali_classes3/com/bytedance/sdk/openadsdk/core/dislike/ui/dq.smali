.class public Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/ia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

.field private final dq:Landroid/content/Context;

.field private ia:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private kk:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;

.field private mn:Z

.field private no:Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

.field private o:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

.field private p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

.field private s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ia;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d(Ljava/lang/String;)V

    const-string p3, "other"

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "Dislike \u521d\u59cb\u5316\u5fc5\u987b\u4f7f\u7528activity,\u8bf7\u5728TTAdManager.createAdNative(activity)\u4e2d\u4f20\u5165"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->mn:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p()V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    return-object p0
.end method

.method private iw()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slide_banner_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "banner_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "embeded_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->ia()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;

    if-nez v1, :cond_3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$d;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw()V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    return-object p0
.end method

.method private p()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->mn:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->o:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    return-object p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;->ox()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->mn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;->d()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->show()V

    :cond_2
    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->no:Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->o:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->o:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ox()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->dq:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method
