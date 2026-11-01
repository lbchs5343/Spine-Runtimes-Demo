.class Lcom/bytedance/msdk/core/f/d$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/d$3;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/f/d$3;

.field final synthetic dq:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/d$3;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iput-object p2, p0, Lcom/bytedance/msdk/core/f/d$3$2;->dq:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----\u7f51\u7edc\u9519\u8bef\uff0c\u670d\u52a1\u5668\u65e0\u54cd\u5e94\uff0c\u7a0d\u540e\u4f1a\u5c1d\u8bd5\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e----\uff0csetting request failed..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/d$3$2;->dq:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkSettingsHelper"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->ox(Lcom/bytedance/msdk/core/f/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    aput v1, v2, v1

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const/4 v6, -0x2

    aput v6, v2, v1

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v4, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v5, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "request fail\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/d$3$2;->dq:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-boolean v8, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    invoke-static/range {v3 .. v8}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    aget v3, v2, v1

    iget-object v0, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    aget v4, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/d$3$2;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-wide v7, v0, Lcom/bytedance/msdk/core/f/d$3;->iw:J

    sub-long/2addr v5, v7

    iget-boolean v7, v0, Lcom/bytedance/msdk/core/f/d$3;->mn:Z

    iget v2, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/bytedance/msdk/core/f/d$3;->ia:Lorg/json/JSONObject;

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/bytedance/msdk/s/iw;->dq(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V

    return-void
.end method
