.class Lcom/bytedance/msdk/core/admanager/reward/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private final d:I

.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->mp(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- ServerSide reward verify \u8fdb\u884c\u7b2c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\u91cd\u8bd5\u8bf7\u6c42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    :cond_0
    return-void
.end method
