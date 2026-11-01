.class Lcom/bytedance/sdk/openadsdk/core/u$3;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/u;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/u;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->ox:Lcom/bytedance/sdk/openadsdk/core/u;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->ox:Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/dq/dq;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feed component maybe not exist, pls check1, msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/ox;->dq(ILjava/lang/String;)V

    const-string v1, "TTAdNativeImpl"

    const-string v2, "feed component maybe not exist, pls check1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
