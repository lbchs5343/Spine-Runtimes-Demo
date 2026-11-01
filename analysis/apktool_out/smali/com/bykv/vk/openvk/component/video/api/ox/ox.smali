.class public Lcom/bykv/vk/openvk/component/video/api/ox/ox;
.super Ljava/lang/Object;


# instance fields
.field private cd:I

.field private d:I

.field private dq:I

.field private f:I

.field private fw:I

.field private gh:I

.field private ia:Ljava/lang/String;

.field private ig:I

.field private iw:Ljava/lang/String;

.field private jy:I

.field private kk:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private mp:I

.field private no:D

.field private o:Ljava/lang/String;

.field private ox:J

.field private p:D

.field private q:F

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->q:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw:I

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd:I

    const v0, 0x4b000

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->r:I

    return-void
.end method


# virtual methods
.method public cd()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq:I

    return v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->no:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw:Ljava/lang/String;

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig:I

    return v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p:D

    return-void
.end method

.method public dq(F)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->q:F

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 5

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    if-gez v0, :cond_0

    const v0, 0x4b000

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    long-to-int v0, v2

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    :cond_1
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    return v0
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw:I

    return v0
.end method

.method public gh()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cover_height"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cover_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cover_width"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endcard"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_hash"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resolution"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "video_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_download_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->dq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_preload_size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reward_video_cached_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "execute_cached_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endcard_render"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "replay_time"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->wp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_speed_ratio"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "start"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->f:I

    return v0
.end method

.method public ia()F
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->q:F

    return v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public iw()D
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->p:D

    return-wide v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd:I

    return-void
.end method

.method public jy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn:Ljava/lang/String;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s:Ljava/lang/String;

    return-object v0
.end method

.method public le()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->cd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()D
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->no:D

    return-wide v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public o()[I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "VideoInfo"

    const-string v2, "getWidthAndHeight error"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d:I

    return v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->d:I

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn:Ljava/lang/String;

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mp:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->gh:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->jy:I

    return v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ox:J

    return-wide v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->fw:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o:Ljava/lang/String;

    return-void
.end method

.method public wp()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->r:I

    return v0
.end method
