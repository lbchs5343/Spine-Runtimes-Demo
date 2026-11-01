.class public final Lg/gqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lg/eku;


# direct methods
.method public constructor <init>(Lg/eku;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gqf;->b:Lg/eku;

    iput-object p2, p0, Lg/gqf;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 3

    invoke-static {p1}, Lg/acw;->bo(Ljava/util/Collection;)I

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lg/eku;->e:Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v0, p0, Lg/gqf;->b:Lg/eku;

    iput-object p1, v0, Lg/eku;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lg/crl;

    invoke-direct {v1, p0}, Lg/crl;-><init>(Lg/gqf;)V

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    iget-object p1, v0, Lg/eku;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, v0, Lg/eku;->i:Lg/dms;

    new-instance v2, Lg/gyd;

    invoke-direct {v2, p0}, Lg/gyd;-><init>(Lg/gqf;)V

    invoke-interface {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    iget-object p1, v0, Lg/eku;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    return-void
.end method
