.class Lcom/bytedance/msdk/core/admanager/reward/dq$7;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq;->mn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/msdk/core/admanager/reward/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->ox:Lcom/bytedance/msdk/core/admanager/reward/dq;

    iput-boolean p2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$7;->d:J

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq$7$1;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq$7;Lcom/bytedance/sdk/component/kk/d;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 0

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/msdk/core/admanager/reward/dq$7$2;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq$7;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method
