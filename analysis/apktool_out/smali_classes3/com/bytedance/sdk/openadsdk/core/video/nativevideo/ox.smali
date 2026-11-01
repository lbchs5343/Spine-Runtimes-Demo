.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;
.super Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;
    }
.end annotation


# instance fields
.field private bl:Z

.field private by:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/p/ox$d;",
            ">;"
        }
    .end annotation
.end field

.field private ce:Z

.field private final cv:Lcom/bytedance/sdk/component/utils/k$dq;

.field private dc:I

.field private ds:I

.field private e:J

.field private er:Z

.field private gx:Z

.field private h:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

.field private ha:J

.field private ir:Z

.field private volatile j:Z

.field private final ji:Z

.field private jw:Z

.field k:Ljava/lang/Runnable;

.field private kx:J

.field private l:I

.field private n:Z

.field private nh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/p/ox$p;",
            ">;"
        }
    .end annotation
.end field

.field private ob:I

.field private op:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private uh:J

.field private v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

.field private vf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;",
            ">;"
        }
    .end annotation
.end field

.field private vw:J

.field private wn:Z

.field private wp:Landroid/view/ViewGroup;

.field private xz:I

.field private yy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ZZ)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    const-string v3, "embeded_ad"

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->er:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->t:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gx:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by:Z

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vw:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv:Lcom/bytedance/sdk/component/utils/k$dq;

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ji:Z

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ZZZ)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    const-string v3, "embeded_ad"

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->er:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j:Z

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->t:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gx:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by:Z

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vw:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv:Lcom/bytedance/sdk/component/utils/k$dq;

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(Z)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ji:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir:Z

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u:Z

    return-void
.end method

.method public static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic bf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic bl(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic bu(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private bu()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->uh()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "draw_ad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic bx(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic by(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    return-wide v0
.end method

.method public static synthetic cc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic ce(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic cv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private cv()V
    .locals 6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "resumeVideo:  mIsSurfaceValid = "

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "NativeVideoController"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->le:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->er()V

    :goto_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v5, v1, v3

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->d()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->ox(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    :cond_6
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e:J

    return-wide p1
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x7e06ff05

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v6, 0x7e06ffc1

    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v8, 0x7e06fec6

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x1

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v9, v10, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v7, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v8, 0x7e06feb2

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "tt_video_loading_progress_bar"

    invoke-static {v0, v7}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/res/layout/video/p;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/res/layout/video/p;-><init>()V

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/res/layout/video/p;->dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7e06feeb

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v10, 0x7e06fead

    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v10, "tt_play_movebar_textpage"

    invoke-static {v0, v10}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    const-string v4, "tt_Widget_ProgressBar_Horizontal"

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/utils/r;->mn(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct {v3, v0, v11, v4}, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v12, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x64

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v1, 0x7e06fec8

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v11, "#A5FFFFFF"

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v1, v0, v12}, Lg/tn;->v(Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable;Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v1, v5, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v14, "#FFFFFFFF"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v13, v5, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    invoke-direct {v14, v13, v15, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v16, "#FFF85959"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v13, v5, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v6, v13, v15, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array v11, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v11, v17

    aput-object v14, v11, v9

    const/4 v1, 0x2

    aput-object v6, v11, v1

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xc

    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/res/layout/video/iw;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/res/layout/video/iw;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/res/layout/dq;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v4, 0x7e06ff25

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/res/layout/video/d;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/res/layout/video/d;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/res/layout/dq;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v4, 0x7e06fed5

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/res/layout/video/mn;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/res/layout/video/mn;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/res/layout/TTViewStub;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/res/layout/dq;)V

    invoke-static {v7, v7, v8, v5}, Lg/tn;->ac(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const v3, 0x7e06ff79

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private d(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(I)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->wn()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/lang/String;)V

    return-void
.end method

.method private d(JJ)V
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(JJ)V

    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    const-string p2, "NativeVideoController"

    const-string p3, "onProgressUpdate error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;->dq(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private d(IIII)Z
    .locals 0

    if-le p3, p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ox(II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-gtz p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic dc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private dc()V
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    return-void
.end method

.method public static synthetic dk(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->uh:J

    return-wide p1
.end method

.method private dq(IIII)V
    .locals 8

    if-eqz p3, :cond_9

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    int-to-float v0, p3

    int-to-float v1, p1

    div-float v2, v0, v1

    int-to-float v3, p4

    int-to-float v4, p2

    div-float v5, v3, v4

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v6

    instance-of v7, v6, Landroid/view/TextureView;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    :cond_1
    instance-of v7, v6, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    :cond_2
    instance-of v7, v6, Landroid/view/SurfaceView;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    if-nez v7, :cond_4

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    :goto_1
    sub-int p1, p3, p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-int p2, p4, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    div-float/2addr v1, v0

    div-float/2addr v4, v3

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    div-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    invoke-virtual {v7, v2, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    instance-of p1, v6, Landroid/view/TextureView;

    if-eqz p1, :cond_5

    move-object p1, v6

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    check-cast v6, Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_5
    instance-of p1, v6, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    const/16 p2, 0x1d

    if-eqz p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_6

    move-object p1, v6

    check-cast p1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-static {p1, v7}, Lg/aft;->l(Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;Landroid/graphics/Matrix;)V

    :cond_6
    check-cast v6, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_7
    instance-of p1, v6, Landroid/view/SurfaceView;

    if-eqz p1, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_8

    move-object p1, v6

    check-cast p1, Landroid/view/SurfaceView;

    invoke-static {p1, v7}, Lg/aft;->r(Landroid/view/SurfaceView;Landroid/graphics/Matrix;)V

    :cond_8
    check-cast v6, Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    :goto_2
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

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

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->xi()V

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(J)V

    return-void
.end method

.method private dq(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;->dq:Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bykv/vk/openvk/component/video/api/p/d$dq;->s:Lcom/bykv/vk/openvk/component/video/api/p/d$dq;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bykv/vk/openvk/component/video/api/p/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "NativeVideoController"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(JJ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ox(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mn(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->p(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gx:Z

    return p1
.end method

.method public static synthetic ds(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    return-object p0
.end method

.method private ds()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic er(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic fd(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private fd()Z
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dh()Lcom/bytedance/sdk/openadsdk/core/r/bu;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/bu;->dq()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic gx(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic ha(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private ha()Z
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic hf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->z()V

    return-void
.end method

.method public static synthetic ij(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method private ij()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic io(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic ir(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    return-wide v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private iw(I)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic ji(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic jo(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic jw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    return-object p0
.end method

.method private jw()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v1, "splash_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v1, "cache_splash_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->nh:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic kx(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic l(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic m(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    return p0
.end method

.method public static synthetic mc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private mn(I)Z
    .locals 6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(ILcom/bykv/vk/openvk/component/video/api/ox/ox;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne v0, v3, :cond_3

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->r()V

    :cond_3
    return v2
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ji:Z

    return p0
.end method

.method public static synthetic n(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic nh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ij()V

    return-void
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dc()V

    return-void
.end method

.method public static synthetic nt(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic ny(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic ob(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method private ox(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    :cond_0
    return-void
.end method

.method private ox(II)Z
    .locals 0

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bu()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->p(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ir()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(I)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e:J

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(I)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq:Landroid/view/View;

    const/16 v4, 0x32

    const/16 v5, 0x9

    invoke-static {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;II)Z

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;J)V

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->d(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;->kk()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->uh()V

    :cond_7
    :goto_2
    return-void
.end method

.method private p(II)Z
    .locals 2

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const v0, 0xea68

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw()Z

    move-result p0

    return p0
.end method

.method public static synthetic pa(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic sy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic t(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic tl(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method

.method public static synthetic tv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic u(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method public static synthetic uh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic v(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    return-wide v0
.end method

.method private v()V
    .locals 9

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->dq(JI)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vf()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-lt v5, v2, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    :cond_6
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vw()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    invoke-direct {p0, v7, v8, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(JJ)V

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    new-instance v5, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mp()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v7, v5}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->s(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    :cond_8
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->s(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V

    :cond_9
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->cd:Z

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_c

    if-nez v4, :cond_b

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-ge v0, v2, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e()V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-gez v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e()V

    :cond_e
    :goto_3
    return-void
.end method

.method public static synthetic vf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic vw(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->i:Lcom/bytedance/sdk/openadsdk/core/video/dq/dq$dq;

    return-object p0
.end method

.method private vw()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic wi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic wn(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic wp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic ws(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method private ws()V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ji()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/p/ox$d;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->gh:Z

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox$d;->dq(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic x(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I

    return p0
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn()V

    :cond_0
    return-void
.end method

.method public static synthetic xi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    return p0
.end method

.method public static synthetic xj(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    return p0
.end method

.method public static synthetic xv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method public static synthetic xz(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic yo(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    return-object p0
.end method

.method public static synthetic yy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private yy()Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    const-string v2, "[video] invoke NativeVideoController#playVideo error: iRenderView\u4e3anull"

    const-string v3, "tag_video_play"

    const/4 v4, 0x0

    const/16 v5, 0x2715

    const v6, 0xea68

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

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

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v1, v4, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    :cond_2
    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

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

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

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

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h()Z

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

.method public static synthetic z(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    return-object p0
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v2, "embeded_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v1, "feed_show_time"

    invoke-interface {v0, v1, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v2, "draw_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v1, "draw_show_time"

    invoke-interface {v0, v1, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic zi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-object p0
.end method


# virtual methods
.method public by()Z
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
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-gez p1, :cond_1

    if-gez p2, :cond_1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->no()I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->ig()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_10

    if-lez v1, :cond_10

    if-lez p2, :cond_10

    if-gtz p1, :cond_2

    goto/16 :goto_4

    :cond_2
    if-ne p1, p2, :cond_4

    if-le v0, v1, :cond_3

    move v2, v1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, p2, :cond_5

    int-to-float v3, p1

    mul-float v3, v3, v2

    int-to-float v2, p2

    div-float/2addr v3, v2

    float-to-double v2, v3

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->fd()Z

    move-result v3

    if-nez v3, :cond_6

    int-to-float v3, p2

    mul-float v3, v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    int-to-float v5, v1

    mul-float v5, v5, v2

    float-to-double v5, v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    move v2, v3

    move v3, v1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-gt v3, v1, :cond_7

    if-gtz v3, :cond_8

    :cond_7
    move v3, v1

    :cond_8
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(IIII)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v0

    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->fd()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(IIII)V

    return-void

    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v1

    instance-of v4, v1, Landroid/view/TextureView;

    if-eqz v4, :cond_b

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_b
    instance-of v4, v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    if-eqz v4, :cond_c

    check-cast v1, Lcom/bytedance/sdk/openadsdk/upie/video/lottie/UpieVideoView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_c
    instance-of v4, v1, Landroid/view/SurfaceView;

    if-eqz v4, :cond_d

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ox(II)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_10

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p2, :cond_10

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(II)V

    return-void

    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_10
    :goto_4
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

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;ZZ)V

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
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Z)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->c:Ljava/lang/ref/WeakReference;

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

.method public dq(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/bykv/vk/openvk/component/video/api/p/d$dq;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/res/layout/video/LayoutVideoDetail;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/res/layout/video/LayoutVideoDetail;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->j()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v4, 0x1

    move-object v7, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/p/ox;ZLcom/bytedance/sdk/openadsdk/core/d/dq;)V

    return-object v1

    :cond_2
    move-object v7, p0

    move-object v2, p1

    move-object v5, p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;

    iget-object v6, v7, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/p;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/p/ox;Z)V

    return-object v1
.end method

.method public dq()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->j:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ij()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    return-void
.end method

.method public dq(I)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->uh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->uh:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->uh:J

    sub-long/2addr v0, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "close_reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_count"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v3, "embeded_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;JLorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op:Ljava/lang/String;

    const-string v3, "draw_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    const-string v2, "tobsdk_livesdk_live_window_duration_v2"

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public dq(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ob:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(J)V
    .locals 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(ZJZ)V

    :cond_2
    return-void
.end method

.method public dq(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->d(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$8;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(JZ)V

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

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

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

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha:J

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_2

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ha:J

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

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Landroid/view/ViewGroup;)V

    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ws()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;ZZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(ZZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(ZZZ)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->s()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->iw()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$d;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h:Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/p/ox$p;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->nh:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$dq;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vf:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/widget/f$dq;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$9;->dq:[I

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ia()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->jy:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ce:Z

    return-void

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V

    :cond_0
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yy:Ljava/util/Map;

    return-void
.end method

.method public dq(ZI)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->vw:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->mp()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yy:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "tag_video_play"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "[video] play video stop , because no video info"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->t()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->no()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw:Z

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->o()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->mn:J

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_2

    move-wide v3, v7

    :cond_2
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->mn()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ia()I

    move-result v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->ox(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ia()I

    move-result v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->kk()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(II)V

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yy()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->v:Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v0, v3}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kx()V

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->t()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq()V

    :cond_2
    :goto_0
    return-void
.end method

.method public gx()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->yy:Ljava/util/Map;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    return v0
.end method

.method public ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->wp()V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv()V

    return-void
.end method

.method public ig()J
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public iw()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->ox()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ig()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    :cond_2
    return-void
.end method

.method public iw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->wp()V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv()V

    return-void
.end method

.method public jy()I
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ia:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v0

    return v0
.end method

.method public k()Lcom/bykv/vk/openvk/component/video/api/renderview/d;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->fw()Lcom/bykv/vk/openvk/component/video/api/renderview/d;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(ZI)V

    return-void
.end method

.method public le()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->gx:Z

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

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->fw()I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->s()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vf()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-lez v0, :cond_2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ds:I

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "NativeVideoController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ig:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->xz()V

    :cond_7
    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->kk()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(I)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(ZI)V

    return-void
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->xz:I

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->s(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(ZI)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wn:Z

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(I)V
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

.method public s(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/p/d;Landroid/view/View;Z)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by:Z

    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->kk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->s:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->r:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    return-void
.end method

.method public uh()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv:Lcom/bytedance/sdk/component/utils/k$dq;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/k;->dq(Lcom/bytedance/sdk/component/utils/k$dq;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public wp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->p:Lcom/bykv/vk/openvk/component/video/api/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->kk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public xz()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jw:Z

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->cv:Lcom/bytedance/sdk/component/utils/k$dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/k;->dq(Lcom/bytedance/sdk/component/utils/k$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
