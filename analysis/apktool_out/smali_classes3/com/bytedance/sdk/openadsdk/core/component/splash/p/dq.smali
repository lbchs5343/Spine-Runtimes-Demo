.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/d;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;,
        Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$dq;
    }
.end annotation


# instance fields
.field protected bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

.field private bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

.field private by:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

.field protected c:I

.field protected cd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ce:Landroid/content/Context;

.field private cv:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

.field protected d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dc:Landroid/app/Activity;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

.field private ds:J

.field protected e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private er:Ljava/lang/String;

.field protected f:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

.field private fd:Z

.field protected fw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected gh:Z

.field private final gx:Lcom/bytedance/sdk/component/utils/e;

.field protected h:Z

.field private ha:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

.field protected i:Z

.field protected ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

.field protected ig:Z

.field private ij:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;"
        }
    .end annotation
.end field

.field protected ir:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected iw:Landroid/view/View$OnTouchListener;

.field private j:F

.field protected ji:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jw:Z

.field protected jy:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field protected k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

.field protected final kk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected kx:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

.field private l:Z

.field protected le:Z

.field protected mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;

.field protected mp:Z

.field protected n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nh:Z

.field protected no:I

.field protected o:Z

.field private ob:Z

.field protected op:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field protected p:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/f/d/dq/d;",
            ">;"
        }
    .end annotation
.end field

.field protected q:J

.field protected r:Z

.field protected s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private t:I

.field protected u:I

.field private uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

.field private v:Z

.field private vf:Ljava/lang/Double;

.field private vw:J

.field private wn:F

.field protected wp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ws:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private xi:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field private xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

.field private yy:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vf:Ljava/lang/Double;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ob:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->l:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->t:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    new-instance v2, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gx:Lcom/bytedance/sdk/component/utils/e;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->le:Z

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;-><init>()V

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;-><init>()V

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->v:Z

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ds:J

    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vw:J

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fd:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->u:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    return-void
.end method

.method private cd()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vb()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setAdType(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splash_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$5;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    const/4 v8, 0x4

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v2, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v2, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getDislikeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->d(Landroid/view/View;)V

    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setSkipListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->j:F

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ds:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setCountDownTime(I)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/dq;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->dq()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wn:F

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->t:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vw:J

    return-wide p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fd:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fd:Z

    return p1
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o:Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setAttachedToWindowListener(Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView$dq;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setCountDownViewPosition(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xz()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setAdlogoViewVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setAdlogoViewVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ne()I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ne()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->t:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(I)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cd()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v1, "sbr"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fw()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dh()Lcom/bytedance/sdk/openadsdk/core/r/bu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dh()Lcom/bytedance/sdk/openadsdk/core/r/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/bu;->d()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setVideoViewVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setVideoViewVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setVoiceViewListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private gh()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->bu()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->dq(ILcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp()V

    :cond_0
    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gh()V

    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wn:F

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r()V

    return-void
.end method

.method private iw(Z)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    const-string v0, "sp_multi_native_video_data"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "key_video_is_form_splash_click_eye"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dc:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jw:Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->ox()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->le()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jy()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/dq;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :goto_1
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;->ox()V

    return-void

    :cond_4
    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/d;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->no:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/d;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :goto_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->p()V

    :cond_7
    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k()V

    return-void
.end method

.method private le()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->nh:Z

    return p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gx:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->j:F

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/o;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    return-object p0
.end method

.method private ox(Landroid/view/ViewGroup;)V
    .locals 3

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->yy:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->yy:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->iw()V

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->le:Z

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    :cond_8
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->by:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/o$dq;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p(Z)V

    return-void
.end method

.method private ox(Z)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$11;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/dq;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->dq()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vf:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(Z)V

    return-void
.end method

.method private p(Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz p1, :cond_0

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wp()V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i()V

    return-void
.end method

.method private s(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jw:Z

    return p1
.end method

.method private wp()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw(Z)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->yy:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->v:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->v:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;->dq()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bl:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dc:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public d()Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vf:Ljava/lang/Double;

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->u:I

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 6

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jw:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "splash_card_close_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v1, "splash_ad"

    const-string v2, "splash_card_close"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wp()V

    return-void

    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ds:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ds:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->vw:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gx:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gx:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dc:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public declared-synchronized dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->h:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->p()Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kx:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xi:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->kk()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ij:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->kk()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(Z)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ce:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->iw()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->er:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->p()Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jy:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->s()Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;->mn()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ws:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jy:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    const/4 p3, 0x3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string p3, "render splash ad model is null"

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string p3, "render splash material is null"

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ha:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xz:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cv:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->uh:Lcom/bytedance/sdk/openadsdk/core/component/splash/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d;->dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ob:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ob:Z

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->l:Z

    return-void
.end method

.method public dq(Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->xi:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ij:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ws:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    :cond_0
    return-void
.end method

.method public ia()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k()V

    return-void
.end method

.method public ig()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->gx:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public iw()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)[I

    move-result-object v0

    return-object v0
.end method

.method public jy()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->i:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->f:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s()Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->by:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->by:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig:Z

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/mn;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationSplashManagerDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationSplashManagerDefault;-><init>()V

    return-object v0
.end method

.method public mn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->nh:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setSkipIconVisibility(I)V

    :cond_0
    return-void
.end method

.method public mp()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sc()Lcom/bytedance/sdk/openadsdk/core/r/ha;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->kk()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->jy()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ha;->q()Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$9;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Lcom/bytedance/sdk/openadsdk/core/r/ha$dq;I)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setSlideUpTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5f00\u5c4fview\u91cd\u590d\u5c55\u793a"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->nh:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Z)V

    :cond_1
    return-void
.end method

.method public ox()Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->bu:Lcom/bytedance/sdk/openadsdk/core/component/splash/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/o;->dq()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    return v0
.end method

.method public q()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->kk(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p()Lcom/bytedance/sdk/openadsdk/core/ir/dq;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/dq;->d(Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;)V

    return-void
.end method

.method public s()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/ji;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->iw()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v1

    const-string v2, "image_url"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
