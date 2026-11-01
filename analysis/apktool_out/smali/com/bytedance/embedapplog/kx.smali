.class Lcom/bytedance/embedapplog/kx;
.super Lcom/bytedance/embedapplog/ji;


# instance fields
.field private final iw:Lcom/bytedance/embedapplog/u;

.field private final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/ji;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/kx;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_client"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->gh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init config has abversion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/u;->gh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->gh()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->ce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->ce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_group"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->er()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/embedapplog/kx;->iw:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->er()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_feature"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
