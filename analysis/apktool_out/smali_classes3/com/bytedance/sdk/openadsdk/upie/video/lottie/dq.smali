.class public Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq;


# instance fields
.field private bl:I

.field private cd:Z

.field private final d:Ljava/lang/String;

.field private final dq:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private fw:Z

.field private gh:Z

.field private h:F

.field private i:Z

.field private ia:Ljava/lang/String;

.field private final ig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ir:Landroid/os/Handler;

.field private final iw:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

.field private ji:Z

.field private final jy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private kk:Lg/gkb;

.field private kx:J

.field private le:Z

.field private final mn:Landroid/content/Context;

.field private final mp:Lcom/bykv/vk/openvk/component/video/api/dq;

.field private n:I

.field private final no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/graphics/Bitmap;

.field private op:J

.field private final ox:J

.field private final p:I

.field private q:Z

.field private r:Z

.field private final s:I

.field private final u:Ljava/lang/Runnable;

.field private volatile wp:I


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/api/renderview/d;Lcom/bytedance/sdk/openadsdk/upie/dq;Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TTLottieFakeVideoPlayer"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->no:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->jy:Ljava/util/Set;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->h:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->bl:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->u:Ljava/lang/Runnable;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mn:Landroid/content/Context;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->iw:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op:J

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->iw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox:J

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->p()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p:I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->s()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s:I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-direct {p0, p2, p4}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->k()V

    return-void
.end method

.method public static synthetic c(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp:I

    return p0
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->i()V

    return-void
.end method

.method public static synthetic ce(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s:I

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    return p1
.end method

.method private d(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->dq()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(J)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const/16 v0, 0x2712

    const-string v1, "\u5e7f\u544a\u4e3b\u56feurl\u4e3a\u7a7a"

    const v2, 0xea68

    invoke-direct {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$10;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->le:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->o:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lg/gkb;)Lg/gkb;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ia:Ljava/lang/String;

    return-object p1
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$12;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Ljava/lang/String;II)V

    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const/16 v0, 0x2710

    const-string v1, "lottieJsonUrl\u4e3a\u7a7a"

    const v2, 0xea68

    invoke-direct {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ia:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->i()V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$9;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mn:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$11;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$11;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;IILjava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const/16 p2, 0x2714

    const-string v0, "lottie\u97f3\u9891url\u4e3a\u7a7a"

    const v1, 0xea68

    invoke-direct {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    return p1
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->k:Z

    return p0
.end method

.method public static synthetic er(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kx:J

    return-wide v0
.end method

.method public static synthetic gh(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n:I

    return v0
.end method

.method private h()V
    .locals 3

    const-string v0, "--==--pause"

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lg/gkb;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "--==--pause --- enter"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->mn()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "--==--audio pause --- enter"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e()V

    return-void
.end method

.method public static synthetic h(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kx()V

    return-void
.end method

.method public static synthetic i(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->bl:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->bl:I

    return v0
.end method

.method private i()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op:J

    return-wide v0
.end method

.method public static synthetic ir(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->q:Z

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh:Z

    return p1
.end method

.method public static synthetic ji(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->le()V

    return-void
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ji:Z

    return p0
.end method

.method public static synthetic k(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ig:Ljava/util/Map;

    return-object p0
.end method

.method private k()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$15;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$15;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->h:F

    return p0
.end method

.method private kx()V
    .locals 3

    const-string v0, "--==--play"

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lg/gkb;->s()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--==--play --- enter"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->dq()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "--==--audio play --- enter"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp()V

    return-void
.end method

.method public static synthetic kx(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->h()V

    return-void
.end method

.method public static synthetic le(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->bl:I

    return p0
.end method

.method private le()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$13;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$13;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mn:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->jy:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    return p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r()V

    return-void
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->no:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Lg/gkb;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    return-object p0
.end method

.method private ox(I)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$14;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->k:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private p(Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->q:Z

    return p1
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f:Z

    return p0
.end method

.method public static synthetic r(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->n:I

    return p0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->iw:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ia:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    return p1
.end method

.method public static synthetic u(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e()V

    return-void
.end method

.method private wp()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ir:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic wp(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->le:Z

    return p0
.end method


# virtual methods
.method public cd()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ox:J

    return-wide v0
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kx()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->wp:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==--reStart"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gkb;->setProgress(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d()V

    return-void
.end method

.method public dq(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->h:F

    return-void
.end method

.method public dq(I)V
    .locals 1

    const-string v0, "--==--setSeekMode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTLottieFakeVideoPlayer"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(J)V
    .locals 7

    const-string v0, "--==--seekTo: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/gkb;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd()J

    move-result-wide v3

    :cond_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    rem-long v5, p1, v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    long-to-float v5, v5

    long-to-float v3, v3

    div-float/2addr v5, v3

    invoke-virtual {v0, v5}, Lg/gkb;->setProgress(F)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->cd()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->cd()J

    move-result-wide v0

    rem-long/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p(Z)V

    return-void
.end method

.method public dq(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->jy:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 1

    const-string v0, "--==--setDataSource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTLottieFakeVideoPlayer"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Z)V
    .locals 2

    const-string v0, "--==--setQuietPlay: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ji:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Z)V

    :cond_0
    return-void
.end method

.method public dq(ZJZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->ji:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f:Z

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kx:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1, p4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox(Z)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->d()V

    :cond_1
    return-void
.end method

.method public f()J
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    const-string v1, "TTLottieFakeVideoPlayer"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--==--getTotalBufferTime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->op:J

    return-wide v0

    :cond_0
    const-string v0, "--==--is not prepared, getTotalBufferTime: 0"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fw()I
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==--getBufferCount: 1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public gh()J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--getCurrentPosition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public ia()Landroid/graphics/SurfaceTexture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--getVideoHeight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->s:I

    return v0
.end method

.method public iw()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--isFirstFrameSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    return v0
.end method

.method public jy()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--isReleased: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    return v0
.end method

.method public kk()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--isCompleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh:Z

    return v0
.end method

.method public mn()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--isPlaying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    return v0
.end method

.method public no()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--getVideoWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->p:I

    return v0
.end method

.method public o()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--isStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f:Z

    return v0
.end method

.method public ox()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->h()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox(Z)V
    .locals 2

    const-string v0, "--==--setLoop:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->i:Z

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==--stop"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->kk:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->iw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->f:Z

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e()V

    return-void
.end method

.method public q()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->fw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->gh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "--==--isPaused: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLottieFakeVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public s()V
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==--release"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->r:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->no:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->cd:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->p()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;->mp:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->s()V

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method
