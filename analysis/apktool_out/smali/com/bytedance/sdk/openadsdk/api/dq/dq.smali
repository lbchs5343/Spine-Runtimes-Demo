.class public Lcom/bytedance/sdk/openadsdk/api/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/ss/android/download/api/download/DownloadController;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    const p3, 0x36855

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, p3, :cond_0

    const-class p3, Ljava/lang/Integer;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    const p1, 0x3685a

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq(Z)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    const p1, 0x36859

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->d(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    const p1, 0x36858

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x3685b

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->d(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3684f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadController;->setLinkMode(I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadController;->setEnableNewActivity(Z)V

    :cond_0
    return-void
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getLinkMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadController;->setDownloadMode(I)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadController;->setEnableShowComplianceDialog(Z)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableAM()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->shouldUseNewWebView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getDowloadChunkCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableAH()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getInterceptFlag()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getExtraClickOperation()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public no()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->getExtraJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isEnableBackDialog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAddToDownloadManage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isEnableMultipleDownload()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 5

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0x36844

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->dq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x36845

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x36846

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->ox()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36847

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->p()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36848

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36849

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->iw()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->mn()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const v3, 0x3684a

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3684b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->ia()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x3684c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->kk()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->o()Lorg/json/JSONObject;

    move-result-object v1

    const v3, 0x3684d

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x2212b2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->no()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->o()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36852

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->ig()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36853

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->mp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36854

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36856

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->jy()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x36857

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
