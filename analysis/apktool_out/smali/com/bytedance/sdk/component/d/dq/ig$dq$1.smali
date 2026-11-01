.class Lcom/bytedance/sdk/component/d/dq/ig$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/d/dq/ig$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/d/dq/ig$dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/d/dq/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;Lcom/bytedance/sdk/component/d/dq/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq$1;->d:Lcom/bytedance/sdk/component/d/dq/ig$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/ig$dq$1;->dq:Lcom/bytedance/sdk/component/d/dq/kk;

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/d/dq/dq/dq/d;-><init>(Lcom/bytedance/sdk/component/ox/d/r$dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/dq/kk;->dq(Lcom/bytedance/sdk/component/d/dq/kk$dq;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;

    iget-object p1, p1, Lcom/bytedance/sdk/component/d/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/component/ox/d/bl;

    return-object p1
.end method
