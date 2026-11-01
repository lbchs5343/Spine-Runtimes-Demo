.class Lcom/bytedance/msdk/api/p/dq/d/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/dq/d;->mn()V
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

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/dq/d$1;->dq:Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/dq/d$1;->dq:Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/dq/d;->dq(Lcom/bytedance/msdk/api/p/dq/d/dq/d;)Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->ig()Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method
