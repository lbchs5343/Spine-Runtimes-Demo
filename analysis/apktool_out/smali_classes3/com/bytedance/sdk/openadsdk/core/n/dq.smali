.class public Lcom/bytedance/sdk/openadsdk/core/n/dq;
.super Ljava/lang/Object;


# static fields
.field public static volatile dq:Z = true


# direct methods
.method public static dq()V
    .locals 6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->yy()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "big_max_mum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    sget-object v3, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/o/no;->ox(I)V

    :cond_1
    const-string v1, "core_count"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v3, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/o/no;->d(I)V

    :cond_2
    const-string v1, "big_keep_alive"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    sget-object v3, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/o/no;->dq(J)V

    :cond_3
    const-string v1, "big_priority"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/o/no;->ox(Z)V

    const-string v1, "catch_oom"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/o/no;->d(Z)V

    const-string v1, "forbid_autosize_oom"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/o/no;->dq(Z)V

    const-string v1, "enable_proxy"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/o/no;->p(Z)V

    const-string v1, "can_set_crash"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/n/dq;->dq:Z

    const-string v1, "autosize"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->dq(Z)V

    return-void
.end method
