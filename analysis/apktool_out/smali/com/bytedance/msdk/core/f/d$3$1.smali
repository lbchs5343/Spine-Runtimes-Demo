.class Lcom/bytedance/msdk/core/f/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/d$3;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/f/d$3;

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/d$3;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iput-object p2, p0, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v1, p0

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, -0x1

    filled-new-array {v0}, [I

    move-result-object v8

    iget-object v2, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_7

    iget-object v3, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v3, v3, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v2

    aput v2, v3, v16

    iget-object v2, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/c;->dq(Lcom/bytedance/sdk/component/kk/d;)Z

    move-result v2

    const-string v3, "decrypt_time"

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/c;->dq([B)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    iget-object v4, v0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    iget-object v5, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    iget-object v9, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v11, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    iget-boolean v12, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    iget-wide v13, v0, Lcom/bytedance/msdk/core/f/d$3;->iw:J

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;[I[ILcom/bytedance/sdk/component/kk/d;Lorg/json/JSONObject;Ljava/lang/String;[ILcom/bytedance/msdk/api/p/s;Lorg/json/JSONObject;IZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v3, v2, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const v20, 0x13c76

    aput v20, v3, v16

    iget-object v3, v2, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v4, v2, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v2, v2, Lcom/bytedance/msdk/core/f/d$3;->p:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    move/from16 v22, v0

    move/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v22}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const v20, 0x13c77

    aput v20, v2, v16

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v4, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    const-string v21, "response body is null"

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    move/from16 v22, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v17 .. v22}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    goto/16 :goto_5

    :cond_1
    iget-object v2, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cypher"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x2

    const-string v7, "SdkSettingsHelper"

    const-string v9, "message"

    if-ne v0, v6, :cond_3

    :try_start_3
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/c;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    move-object v7, v6

    move-object v6, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ">>>>> setting data error: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    move-object v7, v6

    move-object v6, v2

    goto :goto_3

    :cond_3
    if-ne v0, v15, :cond_4

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_2

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "setting data : "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_7
    const-string v9, "setting data error: "

    invoke-static {v7, v9, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    iget-object v4, v0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    iget-object v5, v1, Lcom/bytedance/msdk/core/f/d$3$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    iget-object v9, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v11, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    iget-boolean v12, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    iget-wide v13, v0, Lcom/bytedance/msdk/core/f/d$3;->iw:J

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;[I[ILcom/bytedance/sdk/component/kk/d;Lorg/json/JSONObject;Ljava/lang/String;[ILcom/bytedance/msdk/api/p/s;Lorg/json/JSONObject;IZJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :goto_4
    iget-object v2, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v3, v2, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const v20, 0x13c6e

    aput v20, v3, v16

    iget-object v3, v2, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v4, v2, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v2, v2, Lcom/bytedance/msdk/core/f/d$3;->p:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    move/from16 v22, v0

    move/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v22}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const v20, 0x13c75

    aput v20, v2, v16

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v4, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    const-string v21, "response body is null"

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    move/from16 v22, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v17 .. v22}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    const v20, 0x13c6f

    aput v20, v2, v16

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->kk:Lcom/bytedance/msdk/core/f/d;

    iget-object v3, v0, Lcom/bytedance/msdk/core/f/d$3;->ox:Lcom/bytedance/msdk/api/p/s;

    iget v4, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    const-string v21, "response is null"

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/f/d$3;->s:Z

    move/from16 v22, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-static/range {v17 .. v22}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/d;Lcom/bytedance/msdk/api/p/s;IILjava/lang/String;Z)V

    :goto_5
    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-object v2, v0, Lcom/bytedance/msdk/core/f/d$3;->d:[I

    aget v2, v2, v16

    iget-object v0, v0, Lcom/bytedance/msdk/core/f/d$3;->dq:[I

    aget v3, v0, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/bytedance/msdk/core/f/d$3$1;->d:Lcom/bytedance/msdk/core/f/d$3;

    iget-wide v6, v0, Lcom/bytedance/msdk/core/f/d$3;->iw:J

    sub-long/2addr v4, v6

    iget-boolean v6, v0, Lcom/bytedance/msdk/core/f/d$3;->mn:Z

    iget v7, v0, Lcom/bytedance/msdk/core/f/d$3;->p:I

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    iget-object v0, v0, Lcom/bytedance/msdk/core/f/d$3;->ia:Lorg/json/JSONObject;

    aget v8, v8, v16

    int-to-long v8, v8

    move-object v11, v10

    move-wide v9, v8

    move-object v8, v0

    invoke-static/range {v2 .. v11}, Lcom/bytedance/msdk/s/iw;->dq(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V

    return-void
.end method
