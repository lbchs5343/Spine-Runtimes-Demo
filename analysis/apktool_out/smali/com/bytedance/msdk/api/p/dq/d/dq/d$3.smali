.class Lcom/bytedance/msdk/api/p/dq/d/dq/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/dq/d;->kk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/api/p/dq/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/dq/d$3;->dq:Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/dq/d$3;->dq:Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/dq/d;->ox(Lcom/bytedance/msdk/api/p/dq/d/dq/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->ig()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->C_()V

    :cond_0
    return-void
.end method
