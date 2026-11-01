.class Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq$7;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq$7;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;->d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;->d:Lcom/bytedance/msdk/core/admanager/reward/dq$7;

    iget-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->ox:Lcom/bytedance/msdk/core/admanager/reward/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;->dq:Lcom/bytedance/sdk/component/kk/d;

    iget-boolean v3, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->dq:Z

    iget-wide v4, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->d:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;Lcom/bytedance/sdk/component/kk/d;ZJ)V

    return-void
.end method
