.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/d/dq;
.super Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;
    }
.end annotation


# instance fields
.field protected bl:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private by:J

.field private c:J

.field private ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

.field private cv:Z

.field private dc:J

.field private ds:J

.field protected e:J

.field private final er:Ljava/lang/Runnable;

.field private gx:Z

.field protected h:Z

.field private final ha:Lcom/bytedance/sdk/component/utils/k$dq;

.field private final ir:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

.field protected ji:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:J

.field protected kx:Z

.field private final l:I

.field n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

.field private nh:Z

.field private ob:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/p/ox$d;",
            ">;"
        }
    .end annotation
.end field

.field private final op:Ljava/util/concurrent/atomic/AtomicInteger;

.field private t:Z

.field private u:J

.field private final uh:Ljava/lang/String;

.field private v:I

.field private vf:Z

.field private vw:I

.field private wn:Z

.field protected wp:Landroid/view/ViewGroup;

.field private xz:Z

.field private yy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->e:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->kx:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->h:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ji:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->op:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->u:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c:J

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vf:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->t:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->gx:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz:Z

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vw:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ha:Lcom/bytedance/sdk/component/utils/k$dq;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv:Z

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vw:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->l:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->uh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic bu(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic by(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic ce(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q:Z

    return p0
.end method

.method public static synthetic cv(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->yy:I

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->v:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->u:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    return-object p0
.end method

.method private d(II)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p0

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Landroid/content/Context;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    aget v2, v0, v2

    int-to-float v5, v2

    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-float v6, v0

    int-to-float v7, p1

    int-to-float v8, p2

    if-eqz v1, :cond_4

    cmpl-float p1, v7, v8

    if-lez p1, :cond_3

    const/4 v9, 0x1

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(FFFFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_4

    :cond_3
    mul-float v8, v8, v5

    div-float v6, v8, v7

    move-object v4, p0

    goto :goto_2

    :cond_4
    cmpg-float p1, v7, v8

    if-gez p1, :cond_5

    const/4 v9, 0x0

    move-object v4, p0

    :try_start_2
    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(FFFFZ)V

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :cond_5
    move-object v4, p0

    mul-float v7, v7, v6

    div-float v5, v7, v8

    :goto_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v5

    float-to-int v0, v6

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, v4, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object p2

    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_6

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_2
    move-exception v0

    move-object v4, p0

    goto :goto_1

    :cond_7
    :goto_3
    return-void

    :goto_4
    const-string p2, "changeVideoSize"

    const-string v0, "changeVideoSizeByWidth error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(JJ)V
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(JJ)V

    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(I)V

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox(JJ)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JJ)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_3
    const-string p2, "BaseVideoController"

    const-string p3, "onProgressUpdate error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(II)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q:Z

    return p1
.end method

.method public static synthetic dc(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->v:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->yy:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->by:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    return-object p0
.end method

.method private dq(FFFFZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_1

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v1, p4, v0

    if-lez v1, :cond_8

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    mul-float p4, p4, p1

    div-float/2addr p4, p3

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    mul-float p3, p3, p2

    div-float/2addr p3, p4

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_0
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object p1

    instance-of p3, p1, Landroid/view/TextureView;

    if-eqz p3, :cond_6

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    instance-of p3, p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz p3, :cond_7

    check-cast p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method private dq(II)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float v3, p1, v3

    int-to-float v1, v1

    mul-float v4, v1, v2

    div-float v4, p2, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    mul-float p2, p2, v2

    div-float p2, v1, p2

    mul-float v0, p2, p1

    goto :goto_0

    :cond_1
    mul-float p1, p1, v2

    div-float p1, v0, p1

    mul-float v1, p1, p2

    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v0

    float-to-int v0, v1

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object p2

    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    const-string p2, "changeVideoSize"

    const-string v0, "changeVideoSizeSupportInteraction error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dq(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xi()V

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    return-void
.end method

.method private dq(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;->s:Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/res/layout/video/LayoutVideoPlayLayoutForLive;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/res/layout/video/LayoutVideoPlayLayoutForLive;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const/4 v4, 0x1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/p/ox;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iput-object v1, v7, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bykv/vk/openvk/component/video/api/p/dq;)V

    return-void
.end method

.method private dq(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vw:I

    if-ne p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vf:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vw:I

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(II)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(JJ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->t:Z

    return p1
.end method

.method public static synthetic ds(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    return p0
.end method

.method public static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic er(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic fd(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c:J

    return-wide v0
.end method

.method public static synthetic gh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic gx(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic ha(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->fw()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic ij(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic ir(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    return-object p0
.end method

.method private iw(I)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(I)Z

    move-result p1

    return p1
.end method

.method public static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic ji(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic jw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic kx(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic l(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private mn(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->nh()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->we()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->t()V

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(JJ)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(JJ)V

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->nh()V

    return-void
.end method

.method private mn(I)Z
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vf:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(ILcom/bykv/vk/openvk/component/video/api/ox/ox;Z)Z

    move-result p1

    return p1

    :cond_0
    if-ne v0, v3, :cond_1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->r()V

    :cond_1
    return v2
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic nh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->uh:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq()V

    :cond_1
    return-void
.end method

.method public static synthetic ob(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private ox(II)V
    .locals 12

    const-string v1, "changeVideoSize"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ws()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, p0

    goto/16 :goto_7

    :cond_0
    const-string v0, "changeVideoSize start check condition complete ... go .."

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Landroid/content/Context;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aget v5, v0, v3

    int-to-float v7, v5

    aget v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-float v8, v0

    int-to-float v9, p1

    int-to-float v10, p2

    if-eqz v2, :cond_3

    cmpl-float p1, v9, v10

    if-lez p1, :cond_2

    const/4 v11, 0x1

    move-object v6, p0

    :try_start_1
    invoke-direct/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(FFFFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_8

    :cond_2
    move-object v6, p0

    goto :goto_2

    :cond_3
    cmpg-float p1, v9, v10

    if-gez p1, :cond_2

    const/4 v11, 0x0

    move-object v6, p0

    :try_start_2
    invoke-direct/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(FFFFZ)V

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto/16 :goto_8

    :goto_2
    div-float p1, v9, v10

    div-float p2, v7, v8

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v5, 0x41100000    # 9.0f

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f100000    # 0.5625f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    mul-float p1, v8, v5

    div-float/2addr p1, v0

    move v10, v8

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const v2, 0x3fe38e39

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    mul-float p1, v7, v5

    div-float/2addr p1, v0

    move v10, p1

    move p1, v7

    goto :goto_3

    :cond_5
    move p1, v9

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",videoWidth="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " \u5c4f\u5e55\u6bd4\u4f8b\u548c\u89c6\u9891\u6bd4\u4f8b\u76f8\u540c\uff0c\u4ee5\u53ca\u5176\u4ed6\u60c5\u51b5\u90fd\u6309\u7167\u5c4f\u5e55\u5bbd\u9ad8\u64ad\u653e\uff0cvideoHeight="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cvideoWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v7, p1

    move v8, v10

    :goto_5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v7

    float-to-int v0, v8

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v2

    instance-of v3, v2, Landroid/view/TextureView;

    if-nez v3, :cond_7

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v3, :cond_9

    :cond_7
    instance-of v3, v2, Landroid/view/TextureView;

    if-eqz v3, :cond_8

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    check-cast v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget-object p1, v6, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_9

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, v6, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    :goto_7
    return-void

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto/16 :goto_1

    :goto_8
    const-string p2, "changeSize error"

    invoke-static {v1, p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ox(JJ)V
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->c()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xc8

    sub-long/2addr v1, v3

    cmp-long v5, p1, v1

    if-ltz v5, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-long p3, p1, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    cmp-long v1, p3, v3

    if-lez v1, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$6;

    invoke-direct {p4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(J)J

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(II)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->mn(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private p(II)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->d(Landroid/content/Context;)[I

    move-result-object v0

    aget v1, v0, v1

    int-to-float v4, v1

    aget v0, v0, v2

    int-to-float v5, v0

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(FFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method private p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ir()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(I)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->u:J

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(I)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;J)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox(II)V

    return-void
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic t(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic u(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    return-object p0
.end method

.method public static synthetic uh(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    return p0
.end method

.method public static synthetic v(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic vf(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic vw(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic wn(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic wp(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private wp()Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    const-string v2, "[video] invoke NativeVideoController#playVideo error: iRenderView\u4e3anull"

    const-string v3, "BaseVideoController"

    const/4 v4, 0x0

    const/16 v5, 0x2715

    const v6, 0xea68

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/bykv/vk/openvk/component/video/dq/p/p;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/upie/dq;

    move-result-object v0

    invoke-direct {v4, v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/dq;-><init>(Lcom/bykv/vk/openvk/component/video/api/renderview/d;Lcom/bytedance/sdk/openadsdk/upie/dq;Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "\u521b\u5efalottie\u64ad\u653e\u5668\u65f6\uff0ciRenderView\u4e3anull, mediaLayout is null: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v5, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v1, v4, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    :cond_2
    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v3

    if-ne v3, v8, :cond_4

    new-instance v3, Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/component/ig/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/bykv/vk/openvk/component/video/dq/p/p;-><init>(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/upie/dq;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/d;-><init>(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bytedance/sdk/openadsdk/upie/dq;Lcom/bykv/vk/openvk/component/video/api/renderview/d;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "\u521b\u5efaUpie\u64ad\u653e\u5668\u65f6\uff0ciRenderView\u4e3anull, mediaLayout is null: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v5, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v1, v4, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    :cond_7
    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v2, Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->h()Z

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide v0

    double-to-long v5, v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->bu()Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/ig/dq/dq;-><init>(Landroid/content/Context;ZJLorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v1

    if-ne v1, v8, :cond_a

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/component/ig/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    goto :goto_3

    :cond_a
    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    :goto_3
    return v8
.end method

.method public static synthetic ws(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private ws()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ij()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ny()Lcom/bytedance/sdk/openadsdk/core/r/ws;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->yy()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic xi(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private xi()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->p(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn()V

    :cond_0
    return-void
.end method

.method public static synthetic xz(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic yy(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method


# virtual methods
.method public O_()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bu()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public by()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc:J

    return-wide v0
.end method

.method public cv()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->op:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->uh()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->t()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq()V

    :cond_2
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/p/d;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    :cond_0
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;ZZ)V

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ob:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/p/ox$d;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/p/ox$d;->dq(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public dc()Z
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x190

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->wp()V

    :cond_1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(J)V

    return-void
.end method

.method public dq(I)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->by:J

    sub-long/2addr v1, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "close_reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_count"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->mp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v0, "rewarded_video"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;JLorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v0, "fullscreen_interstitial_ad"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    const-string v0, "tobsdk_livesdk_live_window_duration_v2"

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method public dq(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->gh()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ds:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(JZ)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-long p1, p2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    mul-long p1, p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ds:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ds:J

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_2

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ds:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Landroid/view/ViewGroup;)V

    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ia()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;ZZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw()V

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ha()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(ZZZ)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$d;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ob:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$p;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/f$dq;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$9;->dq:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ia()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->vf:Z

    return-void

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->iw()V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ji:Ljava/util/Map;

    return-void
.end method

.method public dq(ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->kk()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    return v2

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "BaseVideoController"

    if-eqz v1, :cond_2

    const-string p1, "No video info"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->t()V

    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->kx:Z

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->no()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_6

    move-wide v4, v8

    :cond_6
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ia()I

    move-result v4

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(II)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Landroid/view/ViewGroup;)V

    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp()Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->n:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v1, v4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kx()V

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create video error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz:Z

    return v0
.end method

.method public fd()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v0, "reward_video_show_time"

    invoke-interface {v1, v0, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v0, "full_video_show_time"

    invoke-interface {v1, v0, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public gx()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ji:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->e:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(JLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/dq;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ha()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->kk()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ia()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->r()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->wp()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "resumeVideo:  mIsSurfaceValid = "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "BaseVideoController"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->le:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->er()V

    :goto_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v5, v1, v4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ob()V

    return-void
.end method

.method public iw(J)J
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz()I

    move-result v4

    sub-long/2addr p1, v2

    int-to-long v2, v4

    mul-long v0, v0, v2

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc:J

    return-wide v0
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->vf()V

    return-void
.end method

.method public iw(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->u:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->kx()V

    :goto_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->mn(Z)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->c:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JI)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->o(Z)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->cd:Z

    return-void
.end method

.method public jw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dc()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    return v0
.end method

.method public jy()I
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v0

    return v0
.end method

.method public abstract k()I
.end method

.method public kk()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->s()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->kk()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ce:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->j:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    return-void
.end method

.method public le()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->t:Z

    return v0
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_0
    return-void
.end method

.method public mp()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->fw()I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->kk()V

    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->kk()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(I)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(ZI)V

    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->op:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    :goto_2
    return-void

    :cond_3
    check-cast v1, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    :goto_3
    const/16 p1, 0x400

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public p(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(ZI)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/mn/d;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/mn/d;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/mn/d;->dq(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public s(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->e:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->l()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->h:Z

    :cond_0
    return-void
.end method

.method public s(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->gx:Z

    return-void
.end method

.method public s()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public uh()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;-><init>()V

    const-string v2, "auto_replay"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->nh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->wn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ob()V

    return-void
.end method

.method public vw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public xz()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ir:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->op:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public yy()V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->k()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fq()I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->er:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
