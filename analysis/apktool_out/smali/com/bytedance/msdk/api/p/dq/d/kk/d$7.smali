.class Lcom/bytedance/msdk/api/p/dq/d/kk/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/kk/d;->cd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/api/p/dq/d/kk/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/kk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/kk/d$7;->dq:Lcom/bytedance/msdk/api/p/dq/d/kk/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/kk/d;->mn(Lcom/bytedance/msdk/api/p/dq/d/kk/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->ig()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    :cond_0
    return-void
.end method
