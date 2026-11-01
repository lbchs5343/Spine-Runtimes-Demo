.class final Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d$1;
.super Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method
