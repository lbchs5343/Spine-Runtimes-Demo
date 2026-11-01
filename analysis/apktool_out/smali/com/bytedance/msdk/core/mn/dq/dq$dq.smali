.class public Lcom/bytedance/msdk/core/mn/dq/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/mn/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field final synthetic dq:Lcom/bytedance/msdk/core/mn/dq/dq;

.field private ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/mn/dq/dq;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->d:I

    iput-boolean p3, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->ox:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/dq/dq;->dq(Lcom/bytedance/msdk/core/mn/dq/dq;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/dq/dq;->d(Lcom/bytedance/msdk/core/mn/dq/dq;)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v0

    const-string v1, "serverBidding_timeout"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/mn/dq/dq;->dq(Lcom/bytedance/msdk/core/mn/dq/dq;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/mn/dq/dq;->ox(Lcom/bytedance/msdk/core/mn/dq/dq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wfRequestAfExchange with LabelValueAuto !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->dq:Lcom/bytedance/msdk/core/mn/dq/dq;

    iget v1, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->d:I

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/mn/dq/dq$dq;->ox:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/mn/dq/dq;->dq(Lcom/bytedance/msdk/core/mn/dq/dq;IZ)V

    return-void
.end method
