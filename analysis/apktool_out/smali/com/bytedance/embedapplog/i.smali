.class Lcom/bytedance/embedapplog/i;
.super Lcom/bytedance/embedapplog/r;


# direct methods
.method public constructor <init>(Lcom/bytedance/embedapplog/le;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/r;-><init>(Lcom/bytedance/embedapplog/le;)V

    return-void
.end method


# virtual methods
.method public d()[J
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/k;->ox:[J

    return-object v0
.end method

.method public dq()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->mn()J

    move-result-wide v0

    const-wide/32 v2, 0x1499700

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ox()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->no()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/u;->mn()J

    move-result-wide v1

    const-wide/32 v3, 0x1499700

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/c;->dq()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/le;->ia()Lcom/bytedance/embedapplog/util/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/dq;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->p()Lcom/bytedance/embedapplog/d;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v5, v4}, Lcom/bytedance/embedapplog/v;->dq(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/d;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/bytedance/embedapplog/yy;->ox:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/yy;->dq(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/yy;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->no()Lcom/bytedance/embedapplog/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/u;->iw()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/yo;->dq(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-interface {v1, v2, v0}, Lcom/bytedance/embedapplog/ox;->dq(ZLorg/json/JSONObject;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/embedapplog/r;->dq:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->p()Lcom/bytedance/embedapplog/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/u;->dq(Lorg/json/JSONObject;)V

    return v5

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    return-object v0
.end method
