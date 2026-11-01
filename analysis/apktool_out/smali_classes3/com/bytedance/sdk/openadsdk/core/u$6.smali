.class Lcom/bytedance/sdk/openadsdk/core/u$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

.field final synthetic ox:I

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/u;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->p:Lcom/bytedance/sdk/openadsdk/core/u;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->ox:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/s;

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    const/16 v3, 0x3e8

    invoke-direct {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->mn(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->p:Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->dq(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->ox:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$6;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/d/s;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa0

    invoke-direct {v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    const-string v1, "TTAdNativeImpl"

    const-string v2, "splash component maybe not exist, pls check1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
