.class public final Lg/crl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# instance fields
.field public final synthetic a:Lg/gqf;


# direct methods
.method public constructor <init>(Lg/gqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/crl;->a:Lg/gqf;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .locals 2

    iget-object p1, p0, Lg/crl;->a:Lg/gqf;

    iget-object p2, p1, Lg/gqf;->b:Lg/eku;

    iget-object p2, p2, Lg/eku;->h:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    iget-object p3, p1, Lg/gqf;->a:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p2, p1, Lg/gqf;->b:Lg/eku;

    iget-object p2, p2, Lg/eku;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "loadBannerExpressAd onRenderSuccess getExpressAdView is null"

    invoke-static {p1}, Lg/erl;->y(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p3, p1, Lg/gqf;->b:Lg/eku;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p1, Lg/gqf;->b:Lg/eku;

    iget-object v1, v1, Lg/eku;->i:Lg/dms;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p3, Lg/eku;->h:Landroid/widget/LinearLayout;

    iget-object p3, p1, Lg/gqf;->b:Lg/eku;

    iget-object p3, p3, Lg/eku;->h:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p3, p1, Lg/gqf;->b:Lg/eku;

    iget-object p3, p3, Lg/eku;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p1, Lg/gqf;->a:Landroid/view/ViewGroup;

    iget-object p1, p1, Lg/gqf;->b:Lg/eku;

    iget-object p1, p1, Lg/eku;->h:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
