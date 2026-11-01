.class public Lcom/bytedance/msdk/ox/ox/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/dq/dq$dq;)V
    .locals 11

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/dq/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->mp()Lcom/bytedance/msdk/ox/s/dq/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/dq/dq;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v8

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/jy/dq;->dq()Lcom/bytedance/msdk/core/jy/dq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->i()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/bytedance/msdk/core/jy/dq;->dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Lcom/bytedance/msdk/core/no/d;IZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/lang/String;)V

    return-void
.end method
