.class Lcom/bytedance/msdk/core/mn/d/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/mn/d/dq;->p(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/util/List;

.field final synthetic ox:Lcom/bytedance/msdk/core/mn/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/d/dq;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->ox:Lcom/bytedance/msdk/core/mn/d/dq;

    iput-object p2, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->dq:Ljava/util/List;

    iput p3, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->ox:Lcom/bytedance/msdk/core/mn/d/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->dq:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/d/dq$2;->dq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/d/dq;->dq(Lcom/bytedance/msdk/core/mn/d/dq;Lcom/bytedance/msdk/core/no/no;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/d/dq$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
