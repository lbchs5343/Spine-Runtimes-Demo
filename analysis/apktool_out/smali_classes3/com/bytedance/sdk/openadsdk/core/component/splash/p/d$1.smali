.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ox:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->p:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->dq:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ox:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->p:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {v0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;->ia:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$1;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "splrender"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
