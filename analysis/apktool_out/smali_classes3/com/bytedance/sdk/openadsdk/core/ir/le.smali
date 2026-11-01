.class public Lcom/bytedance/sdk/openadsdk/core/ir/le;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Ljava/lang/String; = ""

.field private static volatile dq:Ljava/lang/String; = ""

.field private static volatile ox:Z


# direct methods
.method public static dq(Z)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/le;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    const-string v2, "new_app_log_oaid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ox(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "p_version"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x19cf

    if-lt v3, v1, :cond_2

    const-string v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/le;->d:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/ir/le;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long p0, v3, v1

    if-gez p0, :cond_4

    :cond_3
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->d:Ljava/lang/String;

    return-object p0

    :cond_4
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->ox:Z

    if-nez p0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/no;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->update()V

    :cond_5
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    if-nez p0, :cond_6

    move-object p0, v0

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/tools/d;->d(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    return-object p0
.end method

.method private static dq()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->mn()Z

    move-result v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/dq;->dq(Z)V

    invoke-static {}, Lcom/bytedance/embedapplog/dq;->dq()V

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->ox:Z

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/d;->d(ILjava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static update()V
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    const-string v2, "app_log_oaid"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    const-string v2, "new_app_log_oaid"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
