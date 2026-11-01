.class Lcom/bytedance/msdk/core/admanager/kk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/kk;
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

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/kk$3;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/kk$3;->dq:Lcom/bytedance/msdk/core/admanager/kk;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/kk;->o(Lcom/bytedance/msdk/core/admanager/kk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/admanager/kk$3$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/admanager/kk$3$1;-><init>(Lcom/bytedance/msdk/core/admanager/kk$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
