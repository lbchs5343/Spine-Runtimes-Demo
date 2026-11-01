.class Lcom/bytedance/msdk/iw/ox$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/ox$1;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/iw/ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/ox$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/ox$1$1;->dq:Lcom/bytedance/msdk/iw/ox$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/s/ox;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/msdk/iw/ox$1$1;->dq:Lcom/bytedance/msdk/iw/ox$1;

    iget-object v0, v0, Lcom/bytedance/msdk/iw/ox$1;->dq:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->iw()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/iw/ox;->dq(Landroid/content/Context;J)V

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->mn()V

    return-void
.end method
