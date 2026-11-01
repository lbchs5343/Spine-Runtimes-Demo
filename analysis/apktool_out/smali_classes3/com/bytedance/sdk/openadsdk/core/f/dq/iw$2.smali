.class Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/dq/iw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/c;->dq(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "creatives"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_cache"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "prefetch_opt_time"

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->dq:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/playable/p;->dq()Lcom/bytedance/sdk/openadsdk/core/playable/p;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/p;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;->d(Lcom/bytedance/sdk/openadsdk/core/f/dq/iw;Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string p2, "DoGetAdsFromNetwork"

    const-string p3, "onAdLoaded error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
