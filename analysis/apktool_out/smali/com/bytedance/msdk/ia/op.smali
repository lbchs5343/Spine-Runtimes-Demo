.class public Lcom/bytedance/msdk/ia/op;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V
    .locals 5

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->bl()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x9c7d

    if-eqz p3, :cond_2

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v2, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;ILjava/lang/String;)V

    :cond_2
    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ig(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    return-void

    :cond_3
    const v4, 0x9c7e

    if-nez v3, :cond_5

    if-eqz p3, :cond_4

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v4, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;ILjava/lang/String;)V

    :cond_4
    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ig(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    return-void

    :cond_5
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p3, :cond_6

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v4, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    return-void

    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_8
    :goto_0
    return-void
.end method
