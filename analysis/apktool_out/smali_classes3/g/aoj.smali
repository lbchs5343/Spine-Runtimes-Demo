.class public final Lg/aoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# instance fields
.field public final synthetic a:Lg/eku;


# direct methods
.method public constructor <init>(Lg/eku;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aoj;->a:Lg/eku;

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 0

    return-void
.end method

.method public final onAdShow()V
    .locals 7

    sget-object v0, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lg/eku;->d:J

    iget-object v0, p0, Lg/aoj;->a:Lg/eku;

    iget-object v1, v0, Lg/eku;->k:Landroid/os/Handler;

    new-instance v2, Lg/fvi;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    sget-wide v3, Lg/eku;->b:J

    const-wide/16 v5, 0x7530

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 0

    return-void
.end method

.method public final onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public final onVideoComplete()V
    .locals 0

    return-void
.end method
