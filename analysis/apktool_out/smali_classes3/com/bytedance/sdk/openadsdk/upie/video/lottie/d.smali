.class public Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq;


# instance fields
.field private final d:I

.field private final dq:Ljava/lang/String;

.field private volatile ia:Z

.field private ig:Lg/gkb;

.field private iw:J

.field private final kk:Lcom/bykv/vk/openvk/component/video/api/dq;

.field private volatile mn:Z

.field private final no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:I

.field private p:Z

.field private s:I


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bytedance/sdk/openadsdk/upie/dq;Lcom/bykv/vk/openvk/component/video/api/renderview/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UpieVideoPlayer"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->s:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ia:Z

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->o:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->p()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->d:I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->s()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ox:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of p1, p3, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->getLottieAnimationView()Lg/gkb;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/upie/dq;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->s:I

    return p0
.end method

.method private d(J)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/gkb;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->cd()J

    move-result-wide v0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    rem-long/2addr p1, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {v2, p1}, Lg/gkb;->setProgress(F)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->mn:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->s:I

    return v0
.end method

.method private dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->d(J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UpieVideoPlayer"

    const-string v2, "--==-- lottie use cache ok"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->mn:Z

    return p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ox:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->r()V

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ia:Z

    return p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->d:I

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->iw:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ia:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->o:Ljava/util/Map;

    return-object p0
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;)Lg/gkb;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    return-object p0
.end method


# virtual methods
.method public cd()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->cd()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==--play"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq()V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d(Z)V

    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==--restart"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gkb;->setProgress(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    invoke-virtual {v0}, Lg/gkb;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq()V

    :cond_1
    return-void
.end method

.method public dq(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/gkb;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 2

    const-string v0, "--==--setSeekMode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(I)V

    return-void
.end method

.method public dq(J)V
    .locals 2

    const-string v0, "--==--seekTo: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->d(J)V

    return-void
.end method

.method public dq(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public dq(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    const-string v0, "--==--setDataSource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public dq(Z)V
    .locals 2

    const-string v0, "--==--isMute: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Z)V

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

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->iw:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq()V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public fw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->fw()I

    move-result v0

    return v0
.end method

.method public gh()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->gh()J

    move-result-wide v0

    return-wide v0
.end method

.method public ia()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ia()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public ig()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ox:I

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->iw()Z

    move-result v0

    return v0
.end method

.method public jy()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==--isReleased: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",      errorInvoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpieVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public kk()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->kk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==--isCompleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",      errorInvoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpieVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public mn()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mn()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public mp()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==--isPlaying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",      errorInvoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpieVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->d:I

    return v0
.end method

.method public o()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==--isStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",      errorInvoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpieVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ox()V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==--pause"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->mn()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d()V

    :cond_1
    return-void
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox(Z)V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==--stop"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->mn()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d()V

    :cond_1
    return-void
.end method

.method public q()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==--isPaused: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",      errorInvoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpieVideoPlayer"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public s()V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==--release"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->kk:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->ig:Lg/gkb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gkb;->iw()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;->no:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d()V

    :cond_1
    return-void
.end method
