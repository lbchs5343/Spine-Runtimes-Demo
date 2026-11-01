.class final Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;
.super Lcom/bytedance/sdk/component/ox/dq/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/ox/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/mn;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/mn;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;->dq:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/ox/d$dq;->dq:J

    return-void
.end method
