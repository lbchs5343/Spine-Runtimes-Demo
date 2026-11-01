.class public final Lg/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# instance fields
.field public final synthetic a:Lg/eku;


# direct methods
.method public constructor <init>(Lg/eku;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/za;->a:Lg/eku;

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lg/eku;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg is: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/erl;->y(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lg/za;->a:Lg/eku;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lg/eku;->f:Z

    return-void
.end method

.method public final onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 2

    iget-object v0, p0, Lg/za;->a:Lg/eku;

    iget-object v1, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    new-instance v1, Lg/aoj;

    invoke-direct {v1, v0}, Lg/aoj;-><init>(Lg/eku;)V

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/eku;->f:Z

    return-void
.end method

.method public final onFullScreenVideoCached()V
    .locals 2

    iget-object v0, p0, Lg/za;->a:Lg/eku;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/eku;->f:Z

    return-void
.end method

.method public final onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/za;->a:Lg/eku;

    iput-boolean v0, v1, Lg/eku;->f:Z

    iget-object v0, v1, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, v1, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    new-instance v0, Lg/aoj;

    invoke-direct {v0, v1}, Lg/aoj;-><init>(Lg/eku;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    return-void
.end method
