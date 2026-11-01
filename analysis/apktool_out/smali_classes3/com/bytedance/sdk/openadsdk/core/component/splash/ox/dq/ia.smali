.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# instance fields
.field private cd:Ljava/lang/String;

.field private f:Z

.field private fw:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

.field private gh:J

.field private ia:Z

.field private ig:J

.field private iw:Z

.field private jy:Z

.field private kk:Z

.field private mn:Lcom/bytedance/sdk/component/kk/d;

.field private mp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private no:J

.field private o:J

.field private p:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->kk:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->p:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->jy:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->kk:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->jy:Z

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->o:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->cd:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ia:Z

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq:I

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mn:Lcom/bytedance/sdk/component/kk/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->fw:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->q:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mp:Ljava/util/Map;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public ia()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->o:J

    return-wide v0
.end method

.method public ig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->jy:Z

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->iw:Z

    return v0
.end method

.method public jy()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->gh:J

    return-wide v0
.end method

.method public kk()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig:J

    return-wide v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ia:Z

    return v0
.end method

.method public mp()Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->fw:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->kk:Z

    return v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->mp:Ljava/util/Map;

    return-object v0
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->no:J

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->kk:Z

    return-void
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/le/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->p:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    return-object v0
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ig:J

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->f:Z

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/core/le/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s:Lcom/bytedance/sdk/openadsdk/core/le/dq/d;

    return-object v0
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->gh:J

    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
