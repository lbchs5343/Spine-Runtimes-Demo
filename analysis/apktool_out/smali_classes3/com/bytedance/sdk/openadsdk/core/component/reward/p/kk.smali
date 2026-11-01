.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;


# instance fields
.field private c:J

.field private final ce:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final er:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final ir:Ljava/util/concurrent/atomic/AtomicLong;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

.field private final u:I

.field private final vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private final wn:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->u:I

    const-wide/16 p1, 0x4

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->c:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ir:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method private bu()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->nh()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ia(I)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->bu()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private dq(IJJZ)V
    .locals 4

    if-eqz p6, :cond_0

    const/4 p2, 0x3

    if-gt p1, p2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ij()V

    return-void

    :cond_0
    if-lez p1, :cond_2

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long p1, v0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr v0, p4

    const-wide/16 p1, 0x0

    cmp-long p3, v0, p1

    if-lez p3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0xc80

    cmp-long p5, p1, p3

    if-gtz p5, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ij()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method

.method private ij()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq()V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ws()V

    return-void
.end method

.method private ws()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private xi()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->fd()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->z()V

    return-void
.end method

.method private z()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->wn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->mn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    return-void

    :cond_2
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq(J)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bl()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    return v0
.end method

.method public cv()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->xi()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ox(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->nh()I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    sput v1, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->wn()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    return-void
.end method

.method public dc()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->t()V

    return-void
.end method

.method public fd()V
    .locals 11

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->er:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->op()J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->le()J

    move-result-wide v3

    long-to-int v1, v3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ce()I

    move-result v3

    int-to-long v4, v1

    move-wide v6, v4

    int-to-long v4, v2

    move v1, v3

    move-wide v2, v6

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(IJJZ)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    int-to-float v4, v1

    const v5, 0x3a83126f    # 0.001f

    mul-float v4, v4, v5

    const v5, 0x3c23d70a    # 0.01f

    mul-float v4, v4, v5

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-int v3, v4

    int-to-long v4, v1

    int-to-long v1, v2

    const/4 v6, 0x0

    move-wide v9, v1

    move v1, v3

    move-wide v2, v4

    move-wide v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(IJJZ)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    int-to-long v3, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->op:Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->ox()I

    move-result v1

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(IJJZ)V

    return-void
.end method

.method public ha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ir()V
    .locals 6

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ir()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "\u5956\u52b1\u5df2\u9886\u53d6"

    const-string v3, "\u8df3\u8fc7"

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public jw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->nh:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->u()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->u()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;->getSceneFrame()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->dq(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ce:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kx()V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    :cond_3
    return-void
.end method

.method public r()V
    .locals 13

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->fw:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->op()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->op:Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->s()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->by()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "\u8df3\u8fc7"

    invoke-virtual/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->n()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_3

    const-string v0, "\u8df3\u8fc7"

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_3
    const-string v0, ""

    goto :goto_2

    :goto_3
    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_4
    return-void
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->vf:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public uh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public wp()V
    .locals 6

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->wp()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "\u5956\u52b1\u5df2\u9886\u53d6"

    const-string v3, "\u8df3\u8fc7"

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public xz()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public yy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
