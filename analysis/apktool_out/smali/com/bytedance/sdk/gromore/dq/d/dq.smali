.class public Lcom/bytedance/sdk/gromore/dq/d/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field private ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->q()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/bytedance/sdk/gromore/dq/d/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/d/dq;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/gromore/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method


# virtual methods
.method public cd()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->jy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    const-string v2, "qa_config_tool"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fw()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->ox()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gh()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    const-string v2, "qa_onetap_tool"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ji()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    const-string v2, "qa_preview_tool"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public jy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->kk()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kx()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->p()Ljava/util/Map;

    move-result-object v0

    const-string v2, "qa_event_tool"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public le()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->ia()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->ox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->kk()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->mn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->iw()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Lcom/bykv/vk/openvk/api/proto/EventListener;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    const-class v2, Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->ia()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->iw()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/d/dq;->ox:Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
