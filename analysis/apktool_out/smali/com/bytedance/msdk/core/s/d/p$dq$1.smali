.class Lcom/bytedance/msdk/core/s/d/p$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/s/d/p$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/s/d/p$dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/s/d/p$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/s/d/p$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/s/d/p$dq;->d(Lcom/bytedance/msdk/core/s/d/p$dq;)I

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/s/d/p$dq;->ox(Lcom/bytedance/msdk/core/s/d/p$dq;)I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--==-- pendingLoadNum: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/core/s/d/p$dq;->p(Lcom/bytedance/msdk/core/s/d/p$dq;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/s/d/p$dq;->p(Lcom/bytedance/msdk/core/s/d/p$dq;)I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/s/d/p$dq;->s(Lcom/bytedance/msdk/core/s/d/p$dq;)Lcom/bytedance/msdk/core/s/d/p$d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/core/s/d/p$dq;->s(Lcom/bytedance/msdk/core/s/d/p$dq;)Lcom/bytedance/msdk/core/s/d/p$d;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/msdk/core/s/d/p$dq$1;->dq:Lcom/bytedance/msdk/core/s/d/p$dq;

    invoke-static {p2}, Lcom/bytedance/msdk/core/s/d/p$dq;->iw(Lcom/bytedance/msdk/core/s/d/p$dq;)I

    move-result p2

    if-gtz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/bytedance/msdk/core/s/d/p$d;->dq(Z)V

    :cond_2
    return-void
.end method
