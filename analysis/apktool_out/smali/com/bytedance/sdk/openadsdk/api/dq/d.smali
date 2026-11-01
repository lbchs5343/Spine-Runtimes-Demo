.class public Lcom/bytedance/sdk/openadsdk/api/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/ss/android/download/api/download/DownloadEventConfig;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadEventConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    return-void
.end method


# virtual methods
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

    const p3, 0x3691b

    if-eq p1, p3, :cond_1

    const p3, 0x3691d

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const p1, 0x3691e

    const-class p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x3691c

    const-class p3, Ljava/lang/Integer;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getRefer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setRefer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickInstallLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableClickEvent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickPauseLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jy()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getStorageDenyLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickContinueLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableV3Event()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public no()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getDownloadScene()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getExtraEventObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickItemTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getExtraJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickStartLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const v3, 0x3690c

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3690d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3690e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->ox()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3690f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36910

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36911

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36912

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36913

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->ia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36914

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->kk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36915

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->o()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x36916

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->no()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->o(II)V

    const v1, 0x36917

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->ig()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x36918

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->mp()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lg/hat;->i(IZ)V

    const v1, 0x36919

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->q()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3691a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/d;->jy()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
