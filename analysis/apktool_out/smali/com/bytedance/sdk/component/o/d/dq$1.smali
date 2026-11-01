.class Lcom/bytedance/sdk/component/o/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/o/d/dq;->dq(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/os/Handler;

.field final synthetic dq:Landroid/os/Handler;

.field final synthetic ox:Lcom/bytedance/sdk/component/o/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/o/d/dq;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->ox:Lcom/bytedance/sdk/component/o/d/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->dq:Landroid/os/Handler;

    iput-object p3, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->ox:Lcom/bytedance/sdk/component/o/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->dq:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/component/o/d/dq$1;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/o/d/dq;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method
