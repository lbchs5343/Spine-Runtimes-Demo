.class public Lcom/bykv/vk/openvk/component/video/api/ox/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private ia:I

.field private iw:D

.field private mn:D

.field private ox:J

.field private p:I

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox:J

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->p:I

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s:J

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw:D

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn:D

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw:D

    return-void
.end method

.method public d(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ia:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d:Ljava/lang/String;

    return-void
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio_url"

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file_hash"

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v5, "size"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->p:I

    if-ltz v1, :cond_3

    const-string v2, "reward_audio_cached_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->s:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    const-string v3, "audio_preload_size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_5

    const-string v5, "audio_duration"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    iget-wide v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_6

    const-string v3, "start"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ia:I

    if-lez v1, :cond_7

    const-string v2, "repeat_count"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->p:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public iw()D
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw:D

    return-wide v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ia:I

    return v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->ox:J

    return-wide v0
.end method

.method public p()D
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->mn:D

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->d:Ljava/lang/String;

    return-object v0
.end method
