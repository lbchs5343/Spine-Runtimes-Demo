.class public Lcom/bytedance/sdk/openadsdk/api/dq/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/ss/android/download/api/model/DownloadShortInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/DownloadShortInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

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

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->hashCode()I

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const p1, 0x369dd

    const-class p3, Ljava/lang/Object;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x369d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ss/android/download/api/model/DownloadShortInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DownloadShortInfo;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->failStatus:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->onlyWifi:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0x369d6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->dq()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->h(IJ)V

    const v1, 0x369d7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x369d8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->ox()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->h(IJ)V

    const v1, 0x369d9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->h(IJ)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const v3, 0x369da

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x369db

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->iw()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x369dc

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/dq/p;->mn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
