.class Lcom/bytedance/msdk/core/admanager/kk$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/views/RefreshableBannerView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/kk;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$4;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$4;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->dq(Lcom/bytedance/msdk/core/admanager/kk;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$4;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->ox(Lcom/bytedance/msdk/core/admanager/kk;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$4;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/kk;->p(Lcom/bytedance/msdk/core/admanager/kk;)V

    return-void
.end method
