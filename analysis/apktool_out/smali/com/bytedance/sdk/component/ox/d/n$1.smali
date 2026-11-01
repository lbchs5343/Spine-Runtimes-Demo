.class final Lcom/bytedance/sdk/component/ox/d/n$1;
.super Lcom/bytedance/sdk/component/ox/d/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/n;->dq(Lcom/bytedance/sdk/component/ox/d/i;JLcom/bytedance/sdk/component/ox/dq/s;)Lcom/bytedance/sdk/component/ox/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/i;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/i;JLcom/bytedance/sdk/component/ox/dq/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->d:J

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->d:J

    return-wide v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/component/ox/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/n$1;->ox:Lcom/bytedance/sdk/component/ox/dq/s;

    return-object v0
.end method
