.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;


# direct methods
.method public varargs constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ox()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$d;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Http2Connection.Listener failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;

    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
