.class public final Lms/bz/bd/c/Pgl/pbln;
.super Lms/bz/bd/c/Pgl/pblm;


# instance fields
.field public h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblm;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pbln;->h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    const/4 v6, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 9

    const/16 v0, 0x27

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "440404"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pbln;->h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "e37e5b"

    const/16 v1, 0xb

    :try_start_1
    new-array v6, v1, [B

    fill-array-data v6, :array_1

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "27a3f8"

    const/16 v1, 0x8

    :try_start_2
    new-array v7, v1, [B

    fill-array-data v7, :array_2

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "827549"

    const/4 v1, 0x6

    :try_start_3
    new-array v7, v1, [B

    fill-array-data v7, :array_3

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "3516b7"

    const/4 v1, 0x7

    :try_start_4
    new-array v7, v1, [B

    fill-array-data v7, :array_4

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "47ebb7"

    :try_start_5
    new-array v8, v1, [B

    fill-array-data v8, :array_5

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pbln;->h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 1
        0x16t
        0x3at
        0x42t
        0x52t
        0xbt
        0x22t
        0x25t
        0x30t
        0x77t
        0x61t
        0x2bt
        0x22t
        0x6ft
        0x4ft
        0x8t
        0xet
        0x36t
        0x1bt
        0x60t
        0x63t
        0x20t
        0x24t
        0x3t
        0x53t
        0xat
        0x31t
        0x21t
        0x1ct
        0x62t
        0x61t
        0x2bt
        0x37t
        0x4et
        0x45t
        0x4ft
        0x6et
        0x7at
        0x58t
        0x21t
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x34t
        0x56t
        0x7t
        0x3t
        0x76t
        0x63t
        0x1ct
        0x67t
        0x38t
        0x71t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x34t
        0x6t
        0x42t
        0x5et
        0x20t
        0x23t
        0xft
    .end array-data

    :array_3
    .array-data 1
        0x24t
        0x35t
        0x50t
        0x53t
        0x2t
        0x2dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2et
        0x38t
        0x45t
        0x67t
        0x45t
        0x34t
        0x22t
    .end array-data

    :array_5
    .array-data 1
        0x8t
        0x10t
        0x22t
        0x37t
        0x6et
        0x5t
        0x14t
    .end array-data
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 17

    sget-object v0, Lms/bz/bd/c/Pgl/pgla;->a:Lms/bz/bd/c/Pgl/pgla;

    iget-object v0, v0, Lms/bz/bd/c/Pgl/pgla;->b:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x3

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const-wide/16 v5, 0x0

    const-string v7, "95f392"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v8, "22d50b"

    const/4 v4, 0x7

    const/16 v10, 0xa

    :try_start_1
    new-array v9, v4, [B

    fill-array-data v9, :array_1

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "757192"

    const/16 v4, 0x8

    :try_start_2
    new-array v9, v4, [B

    fill-array-data v9, :array_2

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v15, "8d15cf"

    :try_start_3
    new-array v6, v10, [B

    fill-array-data v6, :array_3

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v15, "507ea0"

    :try_start_4
    new-array v7, v10, [B

    fill-array-data v7, :array_4

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v16}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {v1, v4}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setConfigUrl(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1, v5}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_3
    return v3

    :catch_1
    const/4 v3, 0x5

    new-array v9, v3, [B

    fill-array-data v9, :array_5

    const-wide/16 v6, 0x0

    const-string v8, "16b6a3"

    const v4, 0x1000001

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    new-array v8, v10, [B

    fill-array-data v8, :array_6

    const-wide/16 v5, 0x0

    const-string v7, "cf0d8a"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-array v9, v10, [B

    fill-array-data v9, :array_7

    const-wide/16 v6, 0x0

    const-string v8, "83331c"

    const v4, 0x1000001

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lms/bz/bd/c/Pgl/pbln$pgla;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor$IGetExtendParams;)V

    invoke-static {v1}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lms/bz/bd/c/Pgl/pbln;->h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    const/4 v0, 0x1

    return v0

    :array_0
    .array-data 1
        0x3bt
        0x32t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x34t
        0x1ct
        0x7et
        0xet
        0x7ct
        0x35t
    .end array-data

    :array_2
    .array-data 1
        0x2et
        0x38t
        0x57t
        0x51t
        0x39t
        0x24t
        0x3dt
        0x10t
    .end array-data

    :array_3
    .array-data 1
        0x2at
        0x69t
        0x4ct
        0x47t
        0x55t
        0x76t
        0xet
        0x77t
        0x4ct
        0x76t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x36t
        0x37t
        0x54t
        0x1et
        0x4ct
        0x33t
        0x3t
        0x23t
        0x4at
        0x26t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x33t
        0x31t
        0x1ct
        0x7dt
        0x57t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x71t
        0x6bt
        0x4dt
        0x16t
        0xet
        0x71t
        0x55t
        0x75t
        0x4dt
        0x27t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x3bt
        0x34t
        0x50t
        0x48t
        0x1ct
        0x60t
        0xet
        0x20t
        0x4et
        0x70t
    .end array-data
.end method

.method public final f(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pbln;->h:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    const/4 v6, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
