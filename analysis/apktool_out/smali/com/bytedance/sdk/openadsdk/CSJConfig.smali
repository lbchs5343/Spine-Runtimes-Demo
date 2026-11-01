.class public Lcom/bytedance/sdk/openadsdk/CSJConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/AdConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private f:Z

.field private fw:Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;

.field private ia:Z

.field private ig:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private iw:I

.field private jy:I

.field private kk:[I

.field private mn:Z

.field private mp:I

.field private no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private ox:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ox:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->iw:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->o:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->dq(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->d(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ox(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ox:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->p(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->s(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->iw(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->iw:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->mn(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mn:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ia(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ia:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->kk(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->kk:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->o(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->o:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->no(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ig:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->ig(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mp:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->mp(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->jy:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->q(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->q:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->jy(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->f:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->f(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->fw:Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;->fw(Lcom/bytedance/sdk/openadsdk/CSJConfig$dq;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->no:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAgeGroup()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->jy:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ig:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->kk:[I

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->no:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInitExtra()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->no:Ljava/util/Map;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationConfig()Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->fw:Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;

    return-object v0
.end method

.method public getPluginUpdateConfig()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->q:I

    return v0
.end method

.method public getThemeStatus()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mp:I

    return v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->iw:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mn:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ia:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ox:Z

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->o:Z

    return v0
.end method

.method public isUseMediation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->f:Z

    return v0
.end method

.method public setAgeGroup(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->jy:I

    return-void
.end method

.method public setAllowShowNotify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mn:Z

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->dq:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ig:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->s:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ia:Z

    return-void
.end method

.method public varargs setDirectDownloadNetworkType([I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->kk:[I

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->p:Ljava/lang/String;

    return-void
.end method

.method public setPaid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->ox:Z

    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->o:Z

    return-void
.end method

.method public setThemeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->mp:I

    return-void
.end method

.method public setTitleBarTheme(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/CSJConfig;->iw:I

    return-void
.end method
