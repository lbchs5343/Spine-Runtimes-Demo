.class Lcom/bytedance/msdk/iw/d/dq/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/d/dq/dq;->jy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/iw/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/d/dq/dq$3;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$3;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->ig(Lcom/bytedance/msdk/iw/d/dq/dq;)Lcom/bytedance/msdk/core/iw/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq/dq$3;->dq:Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;->mp(Lcom/bytedance/msdk/iw/d/dq/dq;)Lcom/bytedance/msdk/core/iw/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/core/iw/d;->dq()V

    :cond_0
    return-void
.end method
