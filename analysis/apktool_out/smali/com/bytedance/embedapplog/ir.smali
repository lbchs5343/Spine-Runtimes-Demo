.class Lcom/bytedance/embedapplog/ir;
.super Lcom/bytedance/embedapplog/ji;


# instance fields
.field private final iw:Lcom/bytedance/embedapplog/u;

.field private final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/ji;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/ir;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "sdk_version"

    const/16 v1, 0x150

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sdk_version_name"

    const-string v1, "3.9.1.baseChina-rc.32"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->kk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->kx()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release_build"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->mp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_region"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->ig()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_language"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->jy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->gh()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliyun_uuid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->no()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/pa;->dq(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "google_aid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "app_track"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/embedapplog/ir;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
