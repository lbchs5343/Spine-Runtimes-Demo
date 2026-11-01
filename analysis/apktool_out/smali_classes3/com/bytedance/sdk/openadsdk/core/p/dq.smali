.class public Lcom/bytedance/sdk/openadsdk/core/p/dq;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->f()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_3
    const/4 v7, 0x0

    invoke-static {v3, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object v7

    iget-object v8, v7, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    if-nez v8, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_4
    invoke-virtual {v8, v3}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(Lorg/json/JSONObject;)V

    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_7
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->le()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_8
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->iy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ji(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->h()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v6, v3

    if-gez p1, :cond_a

    if-eqz p2, :cond_9

    const/4 p1, 0x7

    goto :goto_0

    :cond_9
    const/16 p1, 0x8

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    return v2

    :cond_a
    return v1

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method
