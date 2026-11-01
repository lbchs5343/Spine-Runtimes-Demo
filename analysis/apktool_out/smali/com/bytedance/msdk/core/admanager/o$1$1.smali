.class Lcom/bytedance/msdk/core/admanager/o$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/admanager/reward/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/o$1;->E_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/o$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/o$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/o$1$1;->dq:Lcom/bytedance/msdk/core/admanager/o$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/o$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/admanager/o$1$1$1;-><init>(Lcom/bytedance/msdk/core/admanager/o$1$1;Lcom/bytedance/msdk/api/ox/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method
