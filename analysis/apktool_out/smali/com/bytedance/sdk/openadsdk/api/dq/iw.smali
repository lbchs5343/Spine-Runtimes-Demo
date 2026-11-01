.class public Lcom/bytedance/sdk/openadsdk/api/dq/iw;
.super Lcom/bytedance/sdk/openadsdk/api/d;

# interfaces
.implements Lcom/ss/android/download/api/config/IDownloadButtonClickListener;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/d;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const v2, 0x3677d

    invoke-virtual {v1, v2, p1}, Lg/hat;->i(IZ)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    iput-object p1, v0, Lg/cpq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    :goto_0
    const v0, 0x3677c

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/api/d;->dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 1

    const v0, 0x36786

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/d;->dq(I)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method
