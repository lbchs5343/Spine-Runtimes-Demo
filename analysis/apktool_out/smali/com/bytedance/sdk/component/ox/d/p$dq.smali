.class public final Lcom/bytedance/sdk/component/ox/d/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field d:Z

.field dq:Z

.field ia:Z

.field iw:Z

.field mn:Z

.field ox:I

.field p:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->p:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->s:I

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/ox/d/p$dq;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->iw:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/p$dq;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->dq:Z

    return-object p0
.end method

.method public dq(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/p$dq;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/component/ox/d/p$dq;->p:I

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxStale < 0: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/d/p;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/p;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/d/p;-><init>(Lcom/bytedance/sdk/component/ox/d/p$dq;)V

    return-object v0
.end method
