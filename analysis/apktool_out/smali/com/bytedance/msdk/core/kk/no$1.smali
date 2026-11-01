.class Lcom/bytedance/msdk/core/kk/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/kk/no;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/msdk/core/kk/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/kk/no;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/kk/no$1;->ox:Lcom/bytedance/msdk/core/kk/no;

    iput-object p2, p0, Lcom/bytedance/msdk/core/kk/no$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/kk/no$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adn addShowFreqctlCount ritId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/no$1;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adnSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/no$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/no$1;->ox:Lcom/bytedance/msdk/core/kk/no;

    iget-object v1, p0, Lcom/bytedance/msdk/core/kk/no$1;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/kk/no$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/kk/no;->dq(Lcom/bytedance/msdk/core/kk/no;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/p;->ia()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/kk/mn;->no()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/kk/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->dq()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/bytedance/msdk/core/kk/no$1;->ox:Lcom/bytedance/msdk/core/kk/no;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v0, v4, v2}, Lcom/bytedance/msdk/core/kk/no;->dq(Lcom/bytedance/msdk/core/kk/no;Lcom/bytedance/msdk/core/kk/mn;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
