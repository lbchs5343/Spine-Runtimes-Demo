.class Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->ix()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$7;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$7;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox$7;->dq:Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;->p(Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/ox;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
