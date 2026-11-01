.class Lcom/bytedance/msdk/core/admanager/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/dq;->s(Lcom/bytedance/msdk/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/dq;

.field final synthetic dq:Lcom/bytedance/msdk/api/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/dq;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/dq$2;->d:Lcom/bytedance/msdk/core/admanager/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/dq$2;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$2;->d:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/dq$2;->d:Lcom/bytedance/msdk/core/admanager/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/dq;->dq(Lcom/bytedance/msdk/core/admanager/dq;)Lcom/bytedance/msdk/api/p/dq/iw/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/dq$2;->dq:Lcom/bytedance/msdk/api/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/iw/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    return-void
.end method
