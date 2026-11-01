.class public final Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;
.super Lcom/bytedance/sdk/component/ox/d/n;


# instance fields
.field private final d:J

.field private final dq:Ljava/lang/String;

.field private final ox:Lcom/bytedance/sdk/component/ox/dq/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/bytedance/sdk/component/ox/dq/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/n;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->dq:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->d:J

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->d:J

    return-wide v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->dq:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/ia;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    return-object v0
.end method
