.class Lcom/bytedance/msdk/ox/p/no$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/views/RefreshableBannerView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/no;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no$4;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$4;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/no;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$4;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->ox(Lcom/bytedance/msdk/ox/p/no;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/p/no$4;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/p/no;->p(Lcom/bytedance/msdk/ox/p/no;)V

    return-void
.end method
