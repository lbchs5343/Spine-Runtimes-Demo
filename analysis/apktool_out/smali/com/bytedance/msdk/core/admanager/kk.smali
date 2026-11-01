.class public Lcom/bytedance/msdk/core/admanager/kk;
.super Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private dq:I

.field private final f:Lcom/bytedance/msdk/api/p/dq/dq/dq;

.field private final fw:Ljava/lang/Runnable;

.field private final ia:Landroid/os/Handler;

.field private ig:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Lcom/bytedance/msdk/core/admanager/ox;

.field private final jy:Landroid/view/View$OnAttachStateChangeListener;

.field private final kk:Landroid/os/Handler;

.field private mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

.field private mp:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;",
            ">;"
        }
    .end annotation
.end field

.field private no:Lcom/bytedance/msdk/api/p/dq/dq/p;

.field private o:Lcom/bytedance/msdk/api/p/dq/dq/dq;

.field private final ox:Ljava/lang/String;

.field private p:Lcom/bytedance/msdk/api/dq/d;

.field private q:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bytedance/msdk/core/admanager/ox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->dq:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ig:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->mp:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->q:Ljava/lang/ref/SoftReference;

    new-instance v0, Lcom/bytedance/msdk/core/admanager/kk$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/kk$1;-><init>(Lcom/bytedance/msdk/core/admanager/kk;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->jy:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/kk$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/admanager/kk$2;-><init>(Lcom/bytedance/msdk/core/admanager/kk;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->f:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/kk$3;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/admanager/kk$3;-><init>(Lcom/bytedance/msdk/core/admanager/kk;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->fw:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->d:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/kk;->ox:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/ox;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/core/admanager/ox;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/core/views/RefreshableBannerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    new-instance p2, Lcom/bytedance/msdk/core/admanager/kk$4;

    invoke-direct {p2, p0}, Lcom/bytedance/msdk/core/admanager/kk$4;-><init>(Lcom/bytedance/msdk/core/admanager/kk;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/views/RefreshableBannerView;->setVisibilityChangeListener(Lcom/bytedance/msdk/core/views/RefreshableBannerView$dq;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->ia:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->kk:Landroid/os/Handler;

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/core/admanager/ox;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/kk;Lcom/bytedance/msdk/core/admanager/ox;)Lcom/bytedance/msdk/core/admanager/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    return-object p1
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/kk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/kk;->fw()V

    return-void
.end method

.method private d(Lcom/bytedance/msdk/core/admanager/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->q:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ig:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->mp:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/kk;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->dq:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/kk;Lcom/bytedance/msdk/core/admanager/ox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/kk;->d(Lcom/bytedance/msdk/core/admanager/ox;)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/core/admanager/ox;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/ox;->j_()Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/no/d;->kk(I)I

    move-result p1

    const/16 v0, 0x2710

    const-string v1, "TMe"

    if-lt p1, v0, :cond_0

    const v0, 0x2bf20

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->dq:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->dq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\u4e0b\u53d1\u4e0d\u572810*1000\uff5e180*1000\u8303\u56f4\u5185\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u7981\u6b62banner\u8f6e\u64ad"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ia:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private fw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->d:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/kk;->ox:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/ox;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->f:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->no:Lcom/bytedance/msdk/api/p/dq/dq/p;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/core/admanager/ox;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->p:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V

    :cond_0
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/core/admanager/kk;)Lcom/bytedance/msdk/core/views/RefreshableBannerView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/admanager/kk;)Lcom/bytedance/msdk/core/admanager/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    return-object p0
.end method

.method private jy()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ia:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ia:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->fw:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/msdk/core/admanager/kk;->dq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/core/admanager/kk;)Lcom/bytedance/msdk/core/admanager/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/admanager/kk;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->d:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/core/admanager/kk;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->kk:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/kk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/kk;->jy()V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/admanager/kk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/kk;->f()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/admanager/kk;)Lcom/bytedance/msdk/api/p/dq/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/kk;->o:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->k_()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->mn()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->ig:Ljava/lang/ref/SoftReference;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->mp:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd15f

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->jy()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xcd160

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/dq/d;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->cd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->o:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->f:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk;->no:Lcom/bytedance/msdk/api/p/dq/dq/p;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->q:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/ox;->a_(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ia()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->ds()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public ig()Lcom/bytedance/msdk/api/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->o()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->kk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->nh()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->xi()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public mp()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->z()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public no()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/ox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->ob()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/bytedance/msdk/api/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/ox;->vf()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->kk:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/kk;->f()V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->jy:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->d()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->iw:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->d()V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->iw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/ox;->no()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/ox;->d(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/kk;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/admanager/ox;->dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->s:Lcom/bytedance/msdk/core/admanager/ox;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/admanager/kk;->d(Lcom/bytedance/msdk/core/admanager/ox;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk;->mn:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    return-object v0

    :cond_1
    return-object v1
.end method
