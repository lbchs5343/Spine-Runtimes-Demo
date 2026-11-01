.class public abstract Lcom/bytedance/msdk/api/p/dq/d/iw/dq;
.super Ljava/lang/Object;


# static fields
.field private static final ox:Ljava/lang/String; = "TTMediationSDK_dq"


# instance fields
.field protected d:I

.field protected dq:J

.field private p:Lcom/bytedance/msdk/api/p/dq/d/ox/d;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq:J

    iput v1, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d:I

    return-void
.end method


# virtual methods
.method public abstract d()Ljava/lang/String;
.end method

.method public d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq/d/ox/d;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/p/dq/d/ox/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->p:Lcom/bytedance/msdk/api/p/dq/d/ox/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq/d/ox/d;Ljava/util/Map;)V

    return-void
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract dq(Landroid/content/Context;Lcom/bytedance/msdk/api/p/dq/d/ox/d;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/p/dq/d/ox/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d:I

    return v0
.end method

.method public mn()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq:J

    return-void
.end method

.method public final ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq:J

    return-wide v0
.end method
