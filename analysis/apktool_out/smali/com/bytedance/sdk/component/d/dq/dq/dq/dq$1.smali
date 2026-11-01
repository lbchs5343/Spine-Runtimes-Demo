.class Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/d/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;Lcom/bytedance/sdk/component/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;->d:Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/bl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/ox;

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/s;)V

    new-instance p1, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;-><init>(Lcom/bytedance/sdk/component/ox/d/bl;)V

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/d/dq/ox;->onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/s;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/ox;

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/dq;-><init>(Lcom/bytedance/sdk/component/ox/d/s;)V

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/component/d/dq/ox;->onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V

    return-void
.end method
