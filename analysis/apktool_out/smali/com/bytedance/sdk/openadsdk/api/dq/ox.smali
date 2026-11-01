.class public Lcom/bytedance/sdk/openadsdk/api/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/ss/android/download/api/download/DownloadModel;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    return-void
.end method


# virtual methods
.method public bl()Lcom/ss/android/download/api/model/DeepLink;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->autoInstallWithoutNotification()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_0

    const p1, 0x368c7

    const-class p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->i()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->r()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->cd()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x368b9 -> :sswitch_3
        0x368bb -> :sswitch_2
        0x368bc -> :sswitch_1
        0x368c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public cd()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->forceWifi()V

    :cond_0
    return-void
.end method

.method public ce()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getBackupUrls()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public er()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->shouldDownloadWithPatchApply()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gh()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->forceHideNotification()V

    :cond_0
    return-void
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isShowNotification()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ir()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExpectFileLength()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getFunnelType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jy()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isVisibleInDownloadsUi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->distinctDir()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public le()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->needIndependentProcess()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExtraValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isNeedWifi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getClickTrackUrl()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getStartToast()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isShowToast()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ob()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAutoInstall()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public op()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getNotificationJumpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isInExternalPublicDir()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->forceHideToast()V

    :cond_0
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->enablePause()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Lcom/ss/android/download/api/model/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 8

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const v3, 0x368a8

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368a9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368aa

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368ab

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->p()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lg/hat;->h(IJ)V

    const v1, 0x368ac

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368ad

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->iw()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lg/hat;->h(IJ)V

    const v1, 0x368ae

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->mn()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lg/hat;->h(IJ)V

    const v1, 0x368af

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368b0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->kk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368b1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->o()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368b2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->no()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368b3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ig()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368b4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->mp()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368b5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->q()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368b6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->jy()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368b7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368b8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->fw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368ba

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->gh()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368bd

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->le()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368be

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->k()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x368bf

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->wp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->e()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x368c1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->kx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ji()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->bl()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->n()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->op()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x368c7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ir()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->u()Lcom/ss/android/download/api/model/p;

    move-result-object v1

    const v3, 0x368c8

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->c()Z

    move-result v1

    const v4, 0x368c9

    invoke-virtual {v0, v4, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ce()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v1

    const v5, 0x368ca

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->er()Z

    move-result v1

    const v6, 0x368cb

    invoke-virtual {v0, v6, v1}, Lg/hat;->i(IZ)V

    const v1, 0x368cc

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->wn()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lg/hat;->o(II)V

    const v1, 0x368cd

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->j()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lg/hat;->o(II)V

    const v1, 0x368ce

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->nh()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->vf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->ob()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->l()Z

    move-result v1

    invoke-virtual {v0, v5, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->t()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lg/hat;->i(IZ)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method

.method public vf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getSdkMonitorScene()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wn()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getExecutorGroup()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/ox;->dq:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
