.class public Lcom/bytedance/sdk/openadsdk/core/playable/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# instance fields
.field private final d:Landroid/content/Context;

.field private final dq:Ljava/lang/String;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

.field private ig:Z

.field private iw:Landroid/widget/FrameLayout;

.field private kk:Z

.field private mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

.field private mp:Z

.field private no:Z

.field private o:Z

.field private final ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final p:Lcom/bytedance/sdk/component/utils/e;

.field private final q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private final s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p:Lcom/bytedance/sdk/component/utils/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ig:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mp:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->s:I

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->s()V

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private d(Z)V
    .locals 3

    const-string v0, "event"

    const-string v1, "csj_enter_bkbw_playable"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "is_plbkbw_video_show"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq:Ljava/lang/String;

    const-string v2, "playable_track"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private dq(J)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->s:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(J)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o:Z

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Z)V

    :cond_4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/playable/iw;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/playable/mn$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->wp()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->dq()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/iw;->mn(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/mn;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d(Z)V

    return-void
.end method

.method private ia()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ig:Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq(Z)V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia()V

    return-void
.end method

.method private iw()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk()V

    return-void
.end method

.method private kk()V
    .locals 4

    const-string v0, "event"

    const-string v1, "csj_bkbw_playable_error"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq:Ljava/lang/String;

    const-string v3, "playable_track"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    return-object p0
.end method

.method private mn()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;I)V

    return-void
.end method

.method private no()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    const-string v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v5, v7, v1

    const-string v5, "translationY"

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v3, v7, v1

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)Lcom/bytedance/sdk/openadsdk/core/playable/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    return-object p0
.end method

.method private s()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->s:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x425c0000    # 55.0f

    const v3, 0x800035

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v5, 0x431c0000    # 156.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v6, 0x42ae0000    # 87.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v5, 0x42920000    # 73.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v6, 0x43020000    # 130.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->d:Landroid/content/Context;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ig:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw()V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mp:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw()V

    return-void
.end method

.method public dq(JZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mp:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o:Z

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->dq(J)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->q:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/playable/mn$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/mn;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->setCustomClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->iw()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn()V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->d(Z)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->o:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(Z)V

    return-void
.end method

.method public ox()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->mp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->p:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ia()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/playable/iw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->kk:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->no:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/mn;->ig:Z

    return-void
.end method
