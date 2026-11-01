.class public Lcom/bytedance/sdk/openadsdk/iw/ox/ig;
.super Lcom/bytedance/sdk/openadsdk/iw/ox/dq;


# instance fields
.field private d:J

.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;->dq:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;->d:J

    return-void
.end method


# virtual methods
.method public a_(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "run_task_mills"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "preload_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;->dq:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "preload_size"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
