.class Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field d:J

.field dq:J

.field ox:J

.field p:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->p:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->ox:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->d:J

    return-object p0
.end method

.method public dq()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->d:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->dq:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->dq:J

    return-object p0
.end method

.method public ox(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->ox:J

    return-object p0
.end method

.method public p(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->p:J

    return-object p0
.end method
