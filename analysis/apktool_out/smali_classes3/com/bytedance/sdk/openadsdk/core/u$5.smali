.class Lcom/bytedance/sdk/openadsdk/core/u$5;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/u;->dq(ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/u;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;JLcom/bytedance/sdk/openadsdk/f/d/ox/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->s:Lcom/bytedance/sdk/openadsdk/core/u;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->d:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->p:I

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->d:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->s:Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/u;->d(Lcom/bytedance/sdk/openadsdk/core/u;)Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->p:I

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/u$5$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/u$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/u$5;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/u$5;->dq:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/s;->dq(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error msg = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "TTAdNativeImpl"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
