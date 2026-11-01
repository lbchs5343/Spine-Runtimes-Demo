.class final Lcom/bytedance/sdk/component/ox/d/h$1;
.super Lcom/bytedance/sdk/component/ox/d/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/h;->dq(Lcom/bytedance/sdk/component/ox/d/i;[BII)Lcom/bytedance/sdk/component/ox/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/i;

.field final synthetic ox:[B

.field final synthetic p:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/i;I[BI)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    iput p2, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->d:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->ox:[B

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->p:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/i;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->dq:Lcom/bytedance/sdk/component/ox/d/i;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->ox:[B

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->p:I

    iget v2, p0, Lcom/bytedance/sdk/component/ox/d/h$1;->d:I

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/ox/dq/p;->ox([BII)Lcom/bytedance/sdk/component/ox/dq/p;

    return-void
.end method
