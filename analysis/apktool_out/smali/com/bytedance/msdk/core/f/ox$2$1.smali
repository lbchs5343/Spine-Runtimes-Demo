.class Lcom/bytedance/msdk/core/f/ox$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/ox$2;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/f/ox$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/ox$2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-object v0, v0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/ox;->ir(Lcom/bytedance/msdk/core/f/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-object v0, v0, Lcom/bytedance/msdk/core/f/ox$2;->s:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/ox;->ir(Lcom/bytedance/msdk/core/f/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->dq()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->dq()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v5, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-wide v6, v5, Lcom/bytedance/msdk/core/f/ox$2;->d:J

    sub-long/2addr v0, v6

    :try_start_0
    iget-object v5, v5, Lcom/bytedance/msdk/core/f/ox$2;->ox:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    const-string v6, "adn_time"

    invoke-virtual {v5, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-wide v0, Lcom/bytedance/sdk/gromore/init/iw;->p:J

    sget-wide v5, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "csj_init_time"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/iw/p;->dq()Z

    move-result v0

    const-string v1, "TMe"

    if-nez v0, :cond_1

    const-string v0, "-----==---- \u5ef6\u65f6\u4e0a\u62a5sdk_init_end"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-boolean v5, v0, Lcom/bytedance/msdk/core/f/ox$2;->p:Z

    iget-object v6, v0, Lcom/bytedance/msdk/core/f/ox$2;->ox:Lorg/json/JSONObject;

    invoke-static/range {v2 .. v7}, Lcom/bytedance/msdk/iw/p;->dq(JIILorg/json/JSONObject;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const-string v0, "-----==---- \u6b63\u5e38\u4e0a\u62a5sdk_init_end"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-boolean v5, v0, Lcom/bytedance/msdk/core/f/ox$2;->p:Z

    move-object v9, v7

    const-wide/16 v6, -0x1

    iget-object v8, v0, Lcom/bytedance/msdk/core/f/ox$2;->ox:Lorg/json/JSONObject;

    invoke-static/range {v2 .. v9}, Lcom/bytedance/msdk/s/iw;->dq(JIIJLorg/json/JSONObject;Ljava/util/Map;)V

    :goto_1
    invoke-static {}, Lcom/bytedance/msdk/core/d/dq;->dq()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdk init end, duration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initAdnCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFromLocalConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$2$1;->dq:Lcom/bytedance/msdk/core/f/ox$2;

    iget-boolean v1, v1, Lcom/bytedance/msdk/core/f/ox$2;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/f/ox$2$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/f/ox$2$1$1;-><init>(Lcom/bytedance/msdk/core/f/ox$2$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/api/p/s;)V

    return-void
.end method
