.class Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;
.super Lcom/bytedance/sdk/component/ox/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public G_()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void
.end method

.method public d(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public ia()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/dq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
