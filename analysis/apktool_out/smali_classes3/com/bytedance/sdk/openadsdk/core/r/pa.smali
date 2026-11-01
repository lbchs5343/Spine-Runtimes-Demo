.class public Lcom/bytedance/sdk/openadsdk/core/r/pa;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

.field private dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

.field private ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "execute_cached_type"

    const-string v4, "reward_video_cached_type"

    const-string v6, "video_preload_size"

    const-string v7, "fallback_endcard_judge"

    const-string v8, "play_speed_ratio"

    const-string v9, "endcard"

    const-string v10, "video_url"

    const-string v11, "cover_url"

    const-string v12, "video_duration"

    const-string v13, "resolution"

    const-string v14, "cover_width"

    const-string v15, "cover_height"

    const-string v5, "start"

    const-string v1, "file_hash"

    const-string v0, "size"

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    if-eqz v2, :cond_0

    new-instance v4, Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;-><init>()V

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(I)V

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(I)V

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(Ljava/lang/String;)V

    move-object v3, v13

    move-object/from16 v18, v14

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v8, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v4, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(F)V

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(I)V

    const v10, 0x4b000

    invoke-virtual {v2, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    move-object/from16 v10, v17

    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    move-object/from16 v13, v16

    invoke-virtual {v2, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw(I)V

    move-object v9, v3

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v5, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(D)V

    move-object/from16 v2, p0

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object v9, v13

    move-object/from16 v18, v14

    move-object/from16 v10, v17

    :goto_0
    const-string v3, "h265_video"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v13, Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-direct {v13}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;-><init>()V

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(I)V

    move-object/from16 v14, v18

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(I)V

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(Ljava/lang/String;)V

    move-object/from16 v9, v20

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    move-object/from16 v9, v19

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v8, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v13, v8}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(F)V

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(I)V

    const v7, 0x4b000

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    move-object/from16 v6, v16

    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw(I)V

    invoke-virtual {v3, v5, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(D)V

    iput-object v13, v2, Lcom/bytedance/sdk/openadsdk/core/r/pa;->d:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    :cond_1
    const-string v3, "audio"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-direct {v4}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;-><init>()V

    const-string v6, "audio_url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d(Ljava/lang/String;)V

    const-string v6, "reward_audio_cached_type"

    const/high16 v7, -0x80000000

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq(I)V

    const-string v6, "audio_preload_size"

    const-wide/32 v7, -0x80000000

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d(J)V

    invoke-virtual {v3, v0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq(J)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq(Ljava/lang/String;)V

    const-string v0, "audio_duration"

    const-wide/high16 v6, -0x3e20000000000000L    # -2.147483648E9

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d(D)V

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v5, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq(D)V

    const-string v0, "repeat_count"

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d(I)V

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    :cond_2
    return-void
.end method

.method private static cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jv()Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->no()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 9

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(F)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(D)V

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    invoke-virtual {v1, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->p()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(D)V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide v5

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result v0

    add-int/2addr v0, v4

    int-to-double v7, v0

    mul-double v5, v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->kx(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->h(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ji(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(Ljava/lang/String;)V

    :cond_6
    return-object v1
.end method

.method public static dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object p0

    return-object p0
.end method

.method public static dq(ILcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->yy(I)V

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->yy(I)V

    :cond_1
    if-eq p0, v2, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const-string p0, ""

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->p()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->ox()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jn()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ox/ox;Lcom/bykv/vk/openvk/component/video/api/ox/ox;II)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->we()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(I)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    return-object p0
.end method

.method public static fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 7

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Z)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jv()Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->e()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->p()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d(D)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide v3

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result p0

    add-int/2addr p0, v1

    int-to-double v5, p0

    mul-double v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    :cond_0
    return-object v0
.end method

.method public static ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->le()Z

    move-result p0

    return p0
.end method

.method public static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    :cond_2
    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    mul-int p0, p0, v0

    int-to-double v0, p0

    return-wide v0

    :cond_4
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_5

    return-wide v1

    :cond_5
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw()D

    move-result-wide v0

    return-wide v0
.end method

.method public static jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->d:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object p0
.end method

.method public static kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, 0x19d

    return p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19e

    return p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x19f

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method public static mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    return-object p0
.end method

.method public static no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static o(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d()I

    move-result p0

    return p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox()I

    move-result p0

    return p0
.end method

.method public static q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->cd(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/pa;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object p0

    :cond_3
    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(I)V

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p(I)V

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(J)V

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide v2

    iget-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-double v4, p0

    mul-double v2, v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq(D)V

    :cond_4
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object v1
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)[I
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jn()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o()[I

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o()[I

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_0

    const-string v1, "video"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->d:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    if-eqz v0, :cond_1

    const-string v1, "h265_video"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/pa;->ox:Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    if-eqz v0, :cond_2

    const-string v1, "audio"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
