.class public Lcom/bytedance/sdk/openadsdk/core/video/p/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bykv/vk/openvk/component/video/api/s/dq;

.field private static volatile dq:Lcom/bykv/vk/openvk/component/video/api/s/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(ILcom/bytedance/sdk/openadsdk/core/wp/ia;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 13

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    const-class v0, Lorg/json/JSONObject;

    const/4 v9, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v3, "resultModel is null"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, p4

    const/16 v1, -0x3e8

    const/4 v2, -0x2

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-object v9

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/wp/ia;->ox()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "result is null"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p4

    const/16 v1, -0x3e8

    const/4 v2, -0x3

    move-wide v5, v4

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-object v9

    :cond_1
    invoke-interface {v2}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "value is null"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p4

    const/16 v1, -0x3e8

    const/4 v2, -0x4

    move-wide v5, v4

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-object v9

    :cond_2
    const/4 v4, 0x2

    invoke-interface {v3, v4, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    const/4 v5, 0x3

    invoke-interface {v3, v5, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const/4 v6, 0x4

    invoke-interface {v3, v6, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const-string v3, "pitaya_cache_size"

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "pitaya_code"

    const/16 v10, 0xc8

    invoke-virtual {v4, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v10, "success"

    invoke-static {p2, v4, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lorg/json/JSONObject;II)V

    goto :goto_0

    :cond_3
    const/16 v3, -0x3e8

    const/4 v6, -0x5

    move-object v10, v9

    :goto_0
    invoke-interface {v2}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, p4

    move-object v0, p2

    move v1, v3

    move-object v4, v5

    move v2, v6

    move-object v3, v10

    move-wide v5, v11

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    return-object v9
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lcom/bykv/vk/openvk/component/video/api/s/dq;
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    if-nez p0, :cond_1

    const-class p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ig/d/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ig/d/d/dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    if-nez p0, :cond_4

    const-class p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/dq/d/dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/dq/dq/d/dq;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :goto_5
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq:Lcom/bykv/vk/openvk/component/video/api/s/dq;

    return-object p0
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, -0x64

    invoke-interface {p1, p0, v0}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;I)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p0, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    :cond_2
    return-void
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v4, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/ig;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V

    return-void
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;JILjava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/no;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;-><init>()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->dq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->dq(J)V

    invoke-virtual {v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->d(J)V

    invoke-virtual {v2, p4}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->dq(I)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, ""

    if-eqz p2, :cond_1

    move-object p5, p3

    :cond_1
    invoke-virtual {v2, p5}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/no;->ox(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->ox(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V

    return-void
.end method

.method private static d(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic dq(ILcom/bytedance/sdk/openadsdk/core/wp/ia;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(ILcom/bytedance/sdk/openadsdk/core/wp/ia;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "material_meta"

    invoke-virtual {p0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq()Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    const-string v0, "pitaya_cache_size"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pitaya_code"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pitaya_msg"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ext_plugin_code"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ce;->d()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "package"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "run_task_mills"

    invoke-virtual {p0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/p/d$1;

    const-string v2, "csj_vPreload"

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d$1;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_2
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;JZ)V
    .locals 7

    if-eqz p5, :cond_0

    const/4 p5, -0x6

    const/4 v2, -0x6

    goto :goto_0

    :cond_0
    const/16 p5, -0x9

    const/16 v2, -0x9

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, p3

    const/16 v1, -0x3e8

    const-string v3, "bridge is null"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 5

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;-><init>()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;->dq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;->dq(J)V

    invoke-virtual {v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;->d(J)V

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->le()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    const-wide/16 p2, 0x1

    invoke-virtual {v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;->ox(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    invoke-virtual {v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/ox/mp;->ox(J)V

    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;JILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;JILjava/lang/String;)V

    return-void
.end method

.method private static dq(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp/o;->dq()Z

    move-result v5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    const/16 v0, 0x2713

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;JZ)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-class p0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ats/AutoService;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/wp/ox;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/wp/ox;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/wp/mp;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "video_cache"

    move-object v6, v2

    move-object v2, v0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;

    move-wide v4, v3

    move-object v3, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d$2;-><init>(Lorg/json/JSONObject;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-interface {p0, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/wp/ox;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void

    :cond_2
    move-object p0, v1

    move-object p1, v2

    move-wide v4, v3

    const-string v3, "not init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    move-wide v5, v1

    const/16 v1, -0x3e8

    const/4 v2, -0x8

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;IILjava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_3
    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    move p2, v5

    move-wide v4, v3

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v4

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pit predict error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/o;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/o;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    new-instance p0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->p(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V

    return-void
.end method

.method private static ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static p(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 13

    const/16 v0, 0x1770

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw(I)V

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn(I)V

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ia(I)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_1
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;

    move-object v7, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/p/d$3;-><init>(Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;JLcom/bykv/vk/openvk/component/video/api/ox/p;)V

    :try_start_0
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result p0

    if-nez p0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-ge p0, p1, :cond_3

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Lcom/bykv/vk/openvk/component/video/api/s/dq;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1, v7, v2}, Lcom/bykv/vk/openvk/component/video/api/s/dq;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "pit exception onVideoPreloadFail: "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "VideoPreloadUtils"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, v7, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;ILjava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long v9, p1, v5

    const/4 v11, -0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v8, v4

    invoke-static/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;JILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
