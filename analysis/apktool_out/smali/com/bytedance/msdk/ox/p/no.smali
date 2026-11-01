.class public Lcom/bytedance/msdk/ox/p/no;
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

.field private final f:Ljava/lang/Runnable;

.field private final ia:Landroid/os/Handler;

.field private ig:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

.field private final jy:Lcom/bytedance/msdk/api/p/dq/dq/dq;

.field private kk:Lcom/bytedance/msdk/api/p/dq/dq/dq;

.field private final mn:Landroid/os/Handler;

.field private mp:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/bytedance/msdk/api/p/dq/dq/p;

.field private ox:Lcom/bytedance/msdk/api/dq/d;

.field private p:Lcom/bytedance/msdk/ox/p/iw;

.field private final q:Landroid/view/View$OnAttachStateChangeListener;

.field private s:Lcom/bytedance/msdk/ox/p/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/ox/p/no;->dq:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->no:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->ig:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mp:Ljava/lang/ref/SoftReference;

    new-instance v0, Lcom/bytedance/msdk/ox/p/no$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/no$1;-><init>(Lcom/bytedance/msdk/ox/p/no;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->q:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v1, Lcom/bytedance/msdk/ox/p/no$2;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/ox/p/no$2;-><init>(Lcom/bytedance/msdk/ox/p/no;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->jy:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    new-instance v1, Lcom/bytedance/msdk/ox/p/no$3;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/ox/p/no$3;-><init>(Lcom/bytedance/msdk/ox/p/no;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->f:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->d:Ljava/lang/ref/SoftReference;

    new-instance v1, Lcom/bytedance/msdk/ox/p/iw;

    invoke-direct {v1, p1}, Lcom/bytedance/msdk/ox/p/iw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-direct {v1, p1}, Lcom/bytedance/msdk/core/views/RefreshableBannerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    new-instance v0, Lcom/bytedance/msdk/ox/p/no$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/p/no$4;-><init>(Lcom/bytedance/msdk/ox/p/no;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/views/RefreshableBannerView;->setVisibilityChangeListener(Lcom/bytedance/msdk/core/views/RefreshableBannerView$dq;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->d()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->mn:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->ia:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/p/no;Lcom/bytedance/msdk/ox/p/iw;)Lcom/bytedance/msdk/ox/p/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    return-object p1
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/no;->fw()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/no;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/ox/p/no;->dq:I

    return p0
.end method

.method private dq(Lcom/bytedance/msdk/api/dq/d;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/bytedance/msdk/core/no/d;->kk(I)I

    move-result p1

    const/16 v0, 0x2710

    const-string v1, "TMe"

    if-lt p1, v0, :cond_1

    const v0, 0x2bf20

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/bytedance/msdk/ox/p/no;->dq:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/msdk/ox/p/no;->dq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\u4e0b\u53d1\u4e0d\u572810*1000\uff5e180*1000\u8303\u56f4\u5185\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u7981\u6b62banner\u8f6e\u64ad"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/p/iw;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mp:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->no:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->ig:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/p/no;Lcom/bytedance/msdk/ox/p/iw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/iw;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mn:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private fw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->d:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/ox/p/iw;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/ox/p/iw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->s:Lcom/bytedance/msdk/ox/p/iw;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->jy:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->s:Lcom/bytedance/msdk/ox/p/iw;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->o:Lcom/bytedance/msdk/api/p/dq/dq/p;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->s:Lcom/bytedance/msdk/ox/p/iw;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->ox:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V

    :cond_0
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/core/views/RefreshableBannerView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->s:Lcom/bytedance/msdk/ox/p/iw;

    return-object p0
.end method

.method private jy()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mn:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mn:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/msdk/ox/p/no;->dq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/ox/p/no;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->d:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/ox/p/no;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->ia:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/no;->jy()V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/no;->f()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/api/p/dq/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/p/no;->kk:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->iw()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->s()V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->no:Ljava/lang/ref/SoftReference;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->ig:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->d:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/api/dq/d;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;I)Z

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
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/dq/d;)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->kk:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->jy:Lcom/bytedance/msdk/api/p/dq/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no;->o:Lcom/bytedance/msdk/api/p/dq/dq/p;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/msdk/api/p/dq/dq/p;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->mp:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/iw;->p(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->ig()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public ig()Lcom/bytedance/msdk/api/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->fw()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->p()I

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->mp()Ljava/util/List;

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->r()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public mp()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->gh()I

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->q()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/bytedance/msdk/api/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/d;->cd()Lcom/bytedance/msdk/api/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->ia:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/p/no;->f()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->q:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->dq()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->s:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->dq()V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->ox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->mn()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/d;->dq(Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/no;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ox/p/iw;->dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->p:Lcom/bytedance/msdk/ox/p/iw;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/iw;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no;->iw:Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    return-object v0

    :cond_1
    return-object v1
.end method
