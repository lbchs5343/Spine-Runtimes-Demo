.class final Lcom/bytedance/sdk/openadsdk/iw/d/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/component/video/api/d/dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/api/d/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/api/d/dq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/api/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->d:Lcom/bykv/vk/openvk/component/video/api/d/dq;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/f;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/f;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/f;->dq(J)V

    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {v5, v0, v1, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(IJLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v4, v5, v1, v3}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    const-string v3, "EXTRA_PLAY_START"

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    const-string v0, "play_start"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
