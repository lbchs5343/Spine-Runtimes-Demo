.class Lcom/bytedance/msdk/core/jy/dq$1;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/jy/dq;->dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/core/no/d;IZLcom/bytedance/msdk/core/jy/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/jy/dq$dq;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Z

.field final synthetic p:J

.field final synthetic s:Lcom/bytedance/msdk/core/jy/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/jy/dq;Lorg/json/JSONObject;Lcom/bytedance/msdk/core/jy/dq$dq;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iput-boolean p4, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    iput-wide p5, p0, Lcom/bytedance/msdk/core/jy/dq$1;->p:J

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 11

    const/4 p1, -0x1

    const-string v1, "ServerBiddingHelper"

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v0

    invoke-static {p2}, Lcom/bytedance/msdk/ia/c;->dq(Lcom/bytedance/sdk/component/kk/d;)Z

    move-result v2

    const-string v3, "response is empty"

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/c;->dq([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iget-object v6, p0, Lcom/bytedance/msdk/core/jy/dq$1;->dq:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v8, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    iget-wide v9, p0, Lcom/bytedance/msdk/core/jy/dq$1;->p:J

    invoke-static/range {v4 .. v10}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/msdk/core/jy/dq$dq;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    const v2, 0x13c76

    invoke-static {p2, v2, p1, v0, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void

    :cond_0
    const-string p1, "Server Bidding Request onResponse...response v4 is empty"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iget-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    invoke-static {p1, v0, v3, p2, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cypher"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "message"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ltz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lcom/bytedance/msdk/ia/c;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p2, :cond_4

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    move-object v1, p2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ">>>>> server bidding data error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p2, :cond_4

    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_5
    const-string p2, "server bidding data error: "

    invoke-static {v1, p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->dq:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v4, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    iget-wide v5, p0, Lcom/bytedance/msdk/core/jy/dq$1;->p:J

    invoke-static/range {v0 .. v6}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/msdk/core/jy/dq$dq;ZJ)V

    return-void

    :cond_5
    const-string p1, "status_code"

    const/4 p2, -0x2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Server Bidding onResponse error "

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reason is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cdesc is "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    invoke-static {v1, p1, p2, v0, v2}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :goto_3
    iget-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    const v2, 0x13c6e

    invoke-static {p2, v2, p1, v0, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void

    :cond_6
    const-string p1, "Server Bidding Request onResponse...response is empty"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iget-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    invoke-static {p1, v0, v3, p2, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void

    :cond_7
    const-string p2, "Server Bidding Request onResponse...response is null"

    invoke-static {v1, p2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    const-string v2, "response is null"

    invoke-static {p2, p1, v2, v0, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 3

    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    const p1, 0xad75

    goto :goto_0

    :cond_0
    const p1, 0xad74

    :goto_0
    const-string v0, "Server Bidding Request onError...errorCode="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerBiddingHelper"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/jy/dq$1;->s:Lcom/bytedance/msdk/core/jy/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/msdk/core/jy/dq$1;->d:Lcom/bytedance/msdk/core/jy/dq$dq;

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/jy/dq$1;->ox:Z

    invoke-static {v0, p1, p2, v1, v2}, Lcom/bytedance/msdk/core/jy/dq;->dq(Lcom/bytedance/msdk/core/jy/dq;ILjava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;Z)V

    return-void
.end method
