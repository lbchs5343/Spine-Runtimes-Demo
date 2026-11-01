.class Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;->dq(Lcom/bytedance/sdk/gromore/dq/dq/p/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;

.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/p/r;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;Lcom/bytedance/sdk/gromore/dq/dq/p/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox$1;->d:Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/p/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/gromore/dq/dq/p/r;->dq()V

    :cond_0
    return-void
.end method
