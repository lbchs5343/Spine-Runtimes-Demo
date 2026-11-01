.class Lcom/bytedance/msdk/iw/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/dq/dq/p;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/iw/dq/ox;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/iw/dq/ox;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    iput-wide p2, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->dq:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/iw/dq/ox;)Lcom/bytedance/msdk/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/iw/dq/ox;)Lcom/bytedance/msdk/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/dq/ox;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->dq()Ljava/lang/String;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->dq:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==--time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ----==----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMe"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/iw/dq/ox;->d(Lcom/bytedance/msdk/iw/dq/ox;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/iw/dq/ox;->d(Lcom/bytedance/msdk/iw/dq/ox;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v2}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/bytedance/msdk/ia/bl;->ox(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/iw/dq/ox;)Lcom/bytedance/msdk/dq/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/dq/ox;->dq(Lcom/bytedance/msdk/iw/dq/ox;)Lcom/bytedance/msdk/dq/dq/ox;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/dq/dq/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/iw/dq/ox$1;->d:Lcom/bytedance/msdk/iw/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "errorCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;Landroid/util/Pair;)V

    :cond_1
    return-void
.end method
