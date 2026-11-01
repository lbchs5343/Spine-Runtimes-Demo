.class Lcom/bytedance/msdk/core/kk/ig$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/kk/ig;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/msdk/core/kk/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/kk/ig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/kk/ig$1;->ox:Lcom/bytedance/msdk/core/kk/ig;

    iput-object p2, p0, Lcom/bytedance/msdk/core/kk/ig$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/kk/ig$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adn updateShowPacingTime ritId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/ig$1;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adnSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/ig$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/ig$1;->ox:Lcom/bytedance/msdk/core/kk/ig;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/ig$1;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/ig$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/kk/ig;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/kk;->ia()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adn updateShowPacingTime save time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/bytedance/msdk/core/kk/iw;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/ig$1;->ox:Lcom/bytedance/msdk/core/kk/ig;

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/ig$1;->dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/msdk/core/kk/ig$1;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/msdk/core/kk/ig;->dq(Lcom/bytedance/msdk/core/kk/ig;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
