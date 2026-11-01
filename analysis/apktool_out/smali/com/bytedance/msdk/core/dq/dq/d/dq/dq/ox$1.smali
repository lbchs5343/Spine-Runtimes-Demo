.class Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;->u()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox$1;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox$1;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;->dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/dq/ox$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
