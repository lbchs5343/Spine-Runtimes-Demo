.class public Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->d(Z)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V

    return-object v0
.end method

.method public customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ox(Z)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public varargs directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public paid(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Z)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public setAgeGroup(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->p(I)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public setMediationConfig(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public setPluginUpdateConfig(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->p(Z)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public themeStatus(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->d(I)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method

.method public useMediation(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->dq:Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->s(Z)Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;

    return-object p0
.end method
