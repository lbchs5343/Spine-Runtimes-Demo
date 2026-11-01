.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$p;
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;
.implements Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;


# instance fields
.field private ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private er:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

.field private nh:I

.field private ob:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final vf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/f/d/ox/d;",
            "Ljava/lang/String;",
            "I",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->vf:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cd()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setVideoAdListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->nh:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gh:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->cd()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gh:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->fw()V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/4 v1, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v1, "no render express"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/d/ox;)V

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private fw()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-void

    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->er:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->wn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->j:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-void
.end method

.method private gh()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->vf:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ob:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    return-object p0
.end method


# virtual methods
.method public J_()V
    .locals 0

    return-void
.end method

.method public K_()V
    .locals 0

    return-void
.end method

.method public L_()V
    .locals 0

    return-void
.end method

.method public M_()V
    .locals 0

    return-void
.end method

.method public N_()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i:Z

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o:Z

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;I)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q()V

    return-void
.end method

.method public P_()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;->s()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->le()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v3, 0x2

    const-string v5, "splash_show_type"

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->vf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    const-string v2, "openPlayableLandingPage"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public bl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->nh:I

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    return-object v0
.end method

.method public dq(II)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i:Z

    return-void
.end method

.method public dq(JJ)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "splash"

    const-string v0, "\u5c55\u793a\u5f00\u5c4f\u7684\u5bb9\u5668\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->gh()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ob:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Ljava/lang/ref/WeakReference;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->f()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->nh:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fw()V

    return-void
.end method

.method public no()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->mp()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->l:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->d()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q()V

    return-void
.end method

.method public op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ce:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->no()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->r()Z

    move-result v2

    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->gh()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ia:Z

    :cond_1
    return-object v0
.end method
