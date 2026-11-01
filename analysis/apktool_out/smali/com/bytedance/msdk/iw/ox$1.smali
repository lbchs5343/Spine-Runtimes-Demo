.class final Lcom/bytedance/msdk/iw/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/iw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/ox;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/ox$1;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Lcom/bytedance/msdk/core/iw/d;)V

    new-instance v0, Lcom/bytedance/msdk/iw/ox$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/ox$1$1;-><init>(Lcom/bytedance/msdk/iw/ox$1;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->ia()V

    return-void
.end method
