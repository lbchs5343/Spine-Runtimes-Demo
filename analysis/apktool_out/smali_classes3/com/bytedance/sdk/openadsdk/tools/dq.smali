.class public final Lcom/bytedance/sdk/openadsdk/tools/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/TTILog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/tools/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/tools/dq$d;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/tools/dq$d;

.field private final dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/TTILog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/tools/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;Lcom/bytedance/sdk/openadsdk/tools/dq$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->d:Lcom/bytedance/sdk/openadsdk/tools/dq$d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/tools/dq;)Lcom/bytedance/sdk/openadsdk/tools/dq$d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->d:Lcom/bytedance/sdk/openadsdk/tools/dq$d;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/tools/dq;)Lcom/bytedance/sdk/openadsdk/api/TTILog;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    return-object p0
.end method

.method private dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/tools/dq$6;

    const-string v3, "log-big-str"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/tools/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    iget-object p1, v2, Lcom/bytedance/sdk/openadsdk/tools/dq;->d:Lcom/bytedance/sdk/openadsdk/tools/dq$d;

    invoke-virtual {p1, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/tools/dq$d;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    const-string p2, ""

    const-string p3, "print big Str failed!"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->flush()V

    return-void
.end method

.method public forceLogSharding()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->forceLogSharding()V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/tools/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/tools/dq;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/tools/dq$dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tools/dq;->dq:Lcom/bytedance/sdk/openadsdk/api/TTILog;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/TTILog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
