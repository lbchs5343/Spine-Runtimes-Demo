.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;
    }
.end annotation


# static fields
.field public static dq:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final bl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cd:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field private final ce:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:I

.field private e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

.field private final er:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J

.field private fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field private gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

.field private ia:I

.field private ig:J

.field private final ir:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iw:Landroid/content/Context;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final ji:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private jy:J

.field private k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

.field private kk:I

.field private kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

.field private le:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

.field private final mn:Lcom/bytedance/sdk/component/utils/e;

.field private mp:J

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nh:Z

.field private no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field private o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field private final op:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field private p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field private q:J

.field private r:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

.field private s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

.field private final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final wn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->bl:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->nh:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    :goto_0
    new-instance p1, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->kk(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no()V

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->i:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    return-object p1
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    const-string v2, "splash_ad"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;

    invoke-direct {p2, p0, v3, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/core/r/nh;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->l()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->q:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dq/d;->d()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    :cond_0
    return-object p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->bl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->q:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->d(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mn()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->ox(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->d(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mp:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->d(J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mn()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->ox(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->d(Z)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 10

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, p0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-direct {p0, p1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-direct {v7, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;J)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;)V

    if-eqz v1, :cond_2

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    goto :goto_0

    :cond_2
    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->ox(Lcom/bytedance/sdk/openadsdk/core/r/jw;J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p()Z

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p2, :cond_5

    if-gtz p1, :cond_4

    const/4 p1, 0x0

    :cond_4
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    add-int/lit8 v0, p1, 0x64

    int-to-long v4, v0

    const/4 v0, 0x6

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    invoke-direct {p0, v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;ZI)V

    :goto_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result p0

    return p0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s()I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v3
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mp()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir()I

    move-result p2

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->cc()I

    move-result p1

    if-ne p1, v1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private d(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->cd:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    const-string v2, "splash_ad"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$2;

    invoke-direct {p2, p0, v3, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;J)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$11;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;J)V

    invoke-direct {v0, p4, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    return-object v0
.end method

.method private dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->cd:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private dq(I)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->o(I)I

    move-result v0

    if-ge v0, p1, :cond_2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v1, :cond_2

    sub-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  \u51cf\u53bbbuffer time\u540e\u8d85\u65f6\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x4

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;JZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;JZ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v1, p1, p2, p3, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->q:J

    sub-long p2, v4, p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(ZLcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v1, p1, p2, p3, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mp:J

    sub-long p2, v4, p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(ZLcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/r/j;ZJ)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/r/j;ZJ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    move-object v2, p0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v3

    invoke-direct {p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a isCacheAd "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result p1

    invoke-direct {p0, p2, v9, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;ZJLcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    move-object v2, p0

    move-object v7, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a isCacheAd "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object p1

    iput-object p1, v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->r:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    iget-object p1, v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p()V

    :cond_4
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object v1, p0

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result p2

    const-string v0, "Splash_FullLink"

    if-nez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u5b9e\u65f6\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u4e0d\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a, \u6b64\u65f6\u6e32\u67d3\u7ed3\u679c: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->bl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->bl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->i:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;

    move-object v1, p0

    move-object v6, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;ZJLcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    move-object v1, p0

    move-object v6, p1

    const-string p1, "\u7f13\u5b58\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iput-object p4, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->r:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p()V

    :cond_5
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;JZ)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p4, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Z)V

    :cond_2
    invoke-direct {p0, p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result p5

    if-nez p5, :cond_4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result p6

    invoke-direct {p0, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p5

    if-eqz p5, :cond_7

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result p5

    if-eqz p5, :cond_6

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    goto :goto_1

    :cond_6
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    :goto_1
    const/4 p6, 0x2

    invoke-static {p5, p6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result p5

    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw(Z)V

    :cond_7
    if-eqz p7, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Splash_FullLink"

    if-eqz v0, :cond_1

    const-string v0, "\u7f13\u5b58\u5e7f\u544a\uff1a \u7d20\u6750\u9996\u5305\u56de\u8c03"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5b9e\u65f6\u5e7f\u544a\uff1a \u7d20\u6750\u9996\u5305\u56de\u8c03"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    :goto_1
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw(Z)V

    if-eqz p5, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    sub-long v3, v1, v3

    const-string v5, "Splash_FullLink"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(J)V

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->q:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u7f13\u5b58\u52a0\u8f7d\u7269\u6599--end \u8017\u65f6S1\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(J)V

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mp:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox()Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u65f6\u52a0\u8f7d\u7269\u6599--end \u8017\u65f6S1\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 8

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->ox(Lcom/bytedance/sdk/openadsdk/core/r/jw;J)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V

    invoke-direct {v7, v6, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/iw;->d()V

    :cond_2
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->kk()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Splash_FullLink"

    if-nez v3, :cond_1

    const-string v3, "\u5b9e\u65f6cac\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u5931\u8d25\uff0c\u76f4\u63a5\u7ed9\u56de\u8c03"

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    goto :goto_0

    :cond_1
    const-string v3, "\u7f13\u5b58\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->mn()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, -0xe

    goto :goto_1

    :cond_3
    const/4 p1, -0x7

    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->mn()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->kk()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v10

    int-to-long v11, p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v6, p4

    invoke-static/range {v6 .. v13}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(JZZLcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    const-string p1, "\u7f13\u5b58\u5e7f\u544a"

    goto :goto_2

    :cond_5
    const-string p1, "\u5b9e\u65f6\u5e7f\u544a"

    :goto_2
    const-string v1, "\u52a0\u8f7d\u7d20\u6750\u5931\u8d25 "

    invoke-static {p1, v1}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;Z)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6e32\u67d3 timeout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Splash_FullLink"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p3, :cond_3

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Z)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    add-int/lit8 v1, v0, 0x64

    int-to-long v3, v1

    const/4 v1, 0x6

    invoke-virtual {p3, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u6e32\u67d3 isCache "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;ZI)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "lqmt"

    const-string p2, "\u8be5\u5b9e\u65f6\u5e7f\u544a\u5df2\u56de\u8c03\u5a92\u4f53"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-gtz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->p()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {p2, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;->ox()Z

    move-result v2

    const-string v3, "Splash_FullLink"

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->p(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(Z)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->p(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->dq(Z)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u6e32\u67d3--end, \u8017\u65f6S3\uff1a "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->jy:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    const-string p1, "\u7f13\u5b58"

    goto :goto_1

    :cond_2
    const-string p1, "\u5b9e\u65f6"

    :goto_1
    const-string v4, "\u6e32\u67d3\u6210\u529f\u56de\u8c03 \u5f00\u5c4f\u5e7f\u544a\u7c7b\u578b\uff1a "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--end\uff0c\u603b\u8017\u65f6\uff1a "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--end\uff0cgetReqId\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;ZI)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p(Z)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;

    invoke-direct {p2, p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V
    .locals 7

    const-string v0, " \u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--begin "

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/core/r/nh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524drit\u4f4d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->iw(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    int-to-long v3, p2

    iput-wide v3, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->o:J

    int-to-long v5, v1

    iput-wide v5, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->no:J

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    int-to-long v5, p2

    iput-wide v5, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ig:J

    invoke-static {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    invoke-static {v0, v1, p2, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(I)V

    return-void
.end method

.method private dq(Ljava/lang/String;II)V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->f(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_1

    if-lez p2, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    goto :goto_3

    :cond_1
    if-lez p2, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    goto :goto_3

    :cond_3
    if-lez p2, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    :goto_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-lez v0, :cond_5

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    :goto_4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    const-string v0, "; devTimeOut = "

    const-string v2, "; cloudTimeOut = "

    const-string v3, "splashTimeOutControlType = "

    invoke-static {p1, p3, v3, v0, v2}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; realTimeOut = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Splash_FullLink"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    int-to-long p2, p2

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(I)V

    return-void
.end method

.method private dq(ZLcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;J)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "\u7f13\u5b58\u5e7f\u544a"

    goto :goto_0

    :cond_0
    const-string p1, "\u5b9e\u65f6\u5e7f\u544a"

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw()Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->no()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f13\u5b58\u89c6\u9891\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f51\u7edc\u89c6\u9891\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mn()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f13\u5b58\u56fe\u7247\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f51\u7edc\u56fe\u7247\u7d20\u6750--end, \u8017\u65f6S2\uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;

    const-string v1, "preloadSplash"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public static dq()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op()I

    move-result v0

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->nh:Z

    return p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fd()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fd()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op()I

    move-result p0

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->i:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->nh:Z

    return p0
.end method

.method public static synthetic h(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->r:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/r/jw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    return-object p0
.end method

.method private ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk()V

    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    return-object p0
.end method

.method private ig()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private iw()V
    .locals 3

    const-string v0, "startCallBackWhenBufferTimeout "

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u7d20\u6750\u52a0\u8f7d\u548c\u6e32\u67d3\u5e76\u53d1 buffer_time\u8d85\u65f6 \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u6e32\u67d3\u6210\u529f\u5f00\u59cb\u7ed9 onRenderSplashSuccess\u56de\u8c03"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->le:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private iw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public static synthetic ji(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o()V

    return-void
.end method

.method private kk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw()V

    return-void
.end method

.method public static synthetic kx(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p0
.end method

.method private mn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "buffer_time\u8d85\u65f6-\u5e76\u53d1 \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u5f00\u59cb\u7ed9\u52a0\u8f7d\u6210\u529f\u56de\u8c03"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->r:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;J)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "buffer_time\u8d85\u65f6-\u4e32\u884c \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u5f00\u59cb\u7ed9\u52a0\u8f7d\u6210\u529f\u56de\u8c03\u4ee5\u53ca\u5f00\u59cb\u6e32\u67d3"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->cd:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;JLcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/dq;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p()V

    return-void
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox()V

    return-void
.end method

.method private mp()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->n()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->cd:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    return-object p0
.end method

.method private no()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/jw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/jw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->wp:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/jw;Lcom/bytedance/sdk/openadsdk/core/r/jw;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    return-void
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->gh:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    return-object p0
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/ds;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->fw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/ds;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;[B)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    return-void
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rv()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ce()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->le:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    return-object p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->o:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    :cond_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method private ox(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    return-object p0
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s()V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method private p(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->f:J

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->jy:J

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ia()V

    return-void
.end method

.method public static synthetic r(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->d()V

    :cond_1
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s(Z)V

    return-void
.end method

.method private s(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kx:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->f:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->ox(J)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->e:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->jy:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/p;->ox(J)V

    return-void
.end method

.method public static synthetic wp(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->bl:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public dq(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s()V

    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->no:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->ox()V

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->kk()V

    :cond_4
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V

    return-void
.end method
