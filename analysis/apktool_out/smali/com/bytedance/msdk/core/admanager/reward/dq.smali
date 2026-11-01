.class public Lcom/bytedance/msdk/core/admanager/reward/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/admanager/reward/dq$d;,
        Lcom/bytedance/msdk/core/admanager/reward/dq$dq;
    }
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private f:Lcom/bytedance/msdk/core/admanager/reward/dq$d;

.field private ia:Z

.field private ig:Lcom/bytedance/msdk/api/dq/d;

.field private iw:Lcom/bytedance/msdk/api/ox/dq;

.field private jy:Ljava/lang/String;

.field private kk:Z

.field private mn:Z

.field private mp:Lcom/bytedance/msdk/d/s;

.field private no:Ljava/lang/String;

.field private o:I

.field private ox:Z

.field private p:Z

.field private q:J

.field private s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->p:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->s:J

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->kk:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/16 v2, 0x65

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->vf()I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ob()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->d:I

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq:I

    if-gez p1, :cond_1

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq:I

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw:Lcom/bytedance/msdk/api/ox/dq;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/dq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->s:J

    return-wide p1
.end method

.method private dq(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk_version"

    invoke-static {}, Lcom/bytedance/msdk/d/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "plugin_version"

    invoke-static {}, Lcom/bytedance/msdk/d/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_agent"

    sget-object v2, Lcom/bytedance/msdk/d/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_start_ts"

    iget-wide v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "play_end_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->ir()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_9

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trans_id"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->jy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->jy:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->jy:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link_id"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prime_rit"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adn_rit"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mp:Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_name"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->bl()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_amount"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->n()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "media_extra"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v2

    const-string v4, "gromoreExtra"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "scenario_id"

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->wp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mp:Lcom/bytedance/msdk/d/s;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/bytedance/msdk/ia/jy;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Z)Lcom/bytedance/msdk/api/ox;

    move-result-object v1

    const-string v2, "adn_name"

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/ox;->ig()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v3

    :goto_8
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ecpm"

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/ox;->mp()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {v0}, Lcom/bytedance/msdk/ia/c;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(ILjava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, "v4Enc_reward"

    goto :goto_0

    :cond_0
    const-string p3, "v2Enc_reward"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p3, p2, v0, v1, p1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/dq;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/dq;Lcom/bytedance/sdk/component/kk/d;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/sdk/component/kk/d;ZJ)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d;ZJ)V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-nez p1, :cond_1

    const-string p1, "--==-- ServerSide verify netResponse is null"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response is null"

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v2

    invoke-static {p1}, Lcom/bytedance/msdk/ia/c;->dq(Lcom/bytedance/sdk/component/kk/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/ia/c;->dq([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lorg/json/JSONObject;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "--==-- ServerSide verify data v4 is null"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data is empty"

    invoke-direct {p0, v2, p1, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void

    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cypher"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    const-string v5, "desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    const v5, 0xc351

    const/4 v6, 0x1

    if-ne v3, v5, :cond_4

    iput-boolean v6, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->kk:Z

    const-string p1, "--==-- ServerSide verify code: 50001\uff0c\u8bf7\u6c42\u5a92\u4f53\u670d\u52a1\u7aef\u5931\u8d25\uff0c\u9700\u8981\u91cd\u8bd5"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    iget-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const/16 v5, 0x4e20

    if-eq v3, v5, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->kk:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "--==-- ServerSide verify code: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", msg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff0c\u4e0d\u80fd\u518d\u91cd\u8bd5"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    iget-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void

    :cond_5
    if-ltz p1, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    invoke-static {v4}, Lcom/bytedance/msdk/ia/c;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/ia/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lorg/json/JSONObject;ZJ)V

    return-void

    :cond_9
    const-string p1, "--==-- ServerSide verify cypher error or message is null"

    invoke-static {v1, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message is null"

    invoke-direct {p0, v2, p1, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void
.end method

.method private dq(Lorg/json/JSONObject;ZJ)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    const-string p3, "GROMORE_SS_REWARD_VERIFY"

    if-eqz p1, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "--==-- data: "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "is_verify"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string p4, "reason"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string p4, "reward_name"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p4, "reward_amount"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    new-instance v2, Lcom/bytedance/msdk/core/admanager/reward/dq$5;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/msdk/core/admanager/reward/dq$5;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;ZILjava/lang/String;I)V

    iput-object v2, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw:Lcom/bytedance/msdk/api/ox/dq;

    iget-boolean p1, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn:Z

    if-eqz p1, :cond_0

    iget-object p1, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->f:Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    if-eqz p1, :cond_0

    iget-boolean p1, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia:Z

    if-nez p1, :cond_0

    const-string p1, "--==-- verify\u63a5\u53e3\u8bf7\u6c42\u56de\u6765\uff0c\u7ed9\u5f00\u53d1\u8005verify\u56de\u8c03"

    invoke-static {p3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia:Z

    iget-object p1, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->f:Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    iget-object p3, v3, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw:Lcom/bytedance/msdk/api/ox/dq;

    invoke-interface {p1, p3}, Lcom/bytedance/msdk/core/admanager/reward/dq$d;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ZJ)V

    return-void

    :cond_1
    move-object v3, p0

    const-string p1, "--==-- ServerSide verify data is null"

    invoke-static {p3, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p3, "data is null"

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(ILjava/lang/String;Z)V

    return-void
.end method

.method private dq(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "v4Enc_reward"

    goto :goto_0

    :cond_0
    const-string p1, "v2Enc_reward"

    :goto_0
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {p1, v0, p2, p3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->p:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mp:Lcom/bytedance/msdk/d/s;

    return-object p0
.end method

.method private iw()V
    .locals 3

    const-string v0, "GROMORE_SS_REWARD_VERIFY"

    const-string v1, "--==-- showListen\u56de\u8c03\u8fdb\u6765\uff0c\u5f00\u59cb\u8ba1\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$6;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    iget v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->kk:Z

    return p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/core/admanager/reward/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->jy:Ljava/lang/String;

    return-object p0
.end method

.method private mn()V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/p/d;->dq()Lcom/bytedance/msdk/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/p/d;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/ox;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/d;->ia()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "X-Tt-Env"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "x-use-ppe"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "User-Agent"

    sget-object v4, Lcom/bytedance/msdk/d/p;->dq:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/f/ox;->ox()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "x-pglcypher"

    const-string v5, "4"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/msdk/ia/c;->d(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v5, v4}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/kk/d/s;->ox(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/bytedance/msdk/core/admanager/reward/dq$7;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;ZJ)V

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/admanager/reward/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn()V

    return-void
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->p:Z

    return p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/core/admanager/reward/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->no:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/core/admanager/reward/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->o:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/core/admanager/reward/dq$d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->f:Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ia:Z

    return p1
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/admanager/reward/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->s:J

    return-wide v0
.end method


# virtual methods
.method public d()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$1;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->q:J

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->ig:Lcom/bytedance/msdk/api/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->mp:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw()V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/admanager/reward/dq$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->f:Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    return-void
.end method

.method public dq()Z
    .locals 3

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "--==-- \u5224\u65ad\u662f\u5426\u5f00\u542f\u4e86M\u670d\u52a1\u7aef\u6fc0\u52b1\u9a8c\u8bc1\uff1a "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public ox()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$2;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$3;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$4;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
