.class Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ig/iw;Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->p()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->d()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw;)Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    move-result-object v1

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->dq:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw;)Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    move-result-object v1

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->d:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->setResult(Z)Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ig/iw;Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw;)Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->dq:I

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->dq()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Z)Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->d()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw;)Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->dq:I

    mul-int v3, v3, v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ji()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v5, 0x1388

    if-lt v4, v5, :cond_2

    :cond_1
    const/16 v4, 0x3e8

    :cond_2
    if-le v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->ox()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->dq(Z)V

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->p:Ljava/lang/String;

    const-string v6, "dpl_popup"

    invoke-static {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    if-eqz v0, :cond_5

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    :cond_4
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    const-string v5, "is_background"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    const-string v4, "has_focus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    const-string v1, "loop_duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->s:Ljava/util/Map;

    const-string v1, "rom_new_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->setResult(Z)Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->d(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    return-void
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    :cond_0
    return-void
.end method
