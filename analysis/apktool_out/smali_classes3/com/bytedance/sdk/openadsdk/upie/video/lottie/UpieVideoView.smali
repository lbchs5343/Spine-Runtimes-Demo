.class public Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/renderview/d;


# instance fields
.field private final d:Lg/gkb;

.field private final dq:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

.field private final iw:Ljava/lang/Runnable;

.field private mn:Lcom/bykv/vk/openvk/component/video/api/renderview/d$dq;

.field private final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->ox:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->p:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->s:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$4;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->iw:Ljava/lang/Runnable;

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->getView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x4f000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    new-instance v1, Lg/gkb;

    invoke-direct {v1, p1}, Lg/gkb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d:Lg/gkb;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$1;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lg/gkb;->setImageAssetDelegate(Lg/fsj;)V

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/gkb;->setView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lg/gkb;->setRepeatMode(I)V

    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Lg/gkb;->setRepeatCount(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$2;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V

    invoke-virtual {v1, v0}, Lg/gkb;->dq(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$3;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Lg/gkb;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d:Lg/gkb;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->ox:Ljava/util/Map;

    return-object p0
.end method

.method private dq(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->p:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$5;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$5;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;IILjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/upie/d$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->s:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->p:Ljava/util/Map;

    return-object p0
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->p()V

    return-void
.end method

.method private p()V
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d:Lg/gkb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->iw:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->ox()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->iw:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$7;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView$6;-><init>(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/upie/dq/dq;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/renderview/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->dq:Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/renderview/d;->dq(Lcom/bykv/vk/openvk/component/video/api/renderview/dq;)V

    :cond_0
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLottieAnimationView()Lg/gkb;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d:Lg/gkb;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->d:Lg/gkb;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/gkb;->invalidate()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setWindowVisibilityChangedListener(Lcom/bykv/vk/openvk/component/video/api/renderview/d$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;->mn:Lcom/bykv/vk/openvk/component/video/api/renderview/d$dq;

    return-void
.end method
