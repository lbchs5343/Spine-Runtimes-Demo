.class Lcom/bytedance/msdk/ox/ox/dq/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/msdk/ox/ox/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/dq/d;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->ox:Lcom/bytedance/msdk/ox/ox/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->ox:Lcom/bytedance/msdk/ox/ox/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->dq:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Lcom/bytedance/msdk/ox/ox/dq/d;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/dq/d$5;->ox:Lcom/bytedance/msdk/ox/ox/dq/d;

    invoke-static {v4}, Lcom/bytedance/msdk/ox/ox/dq/d;->d(Lcom/bytedance/msdk/ox/ox/dq/d;)Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/ox/ox/dq/d;->dq(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Z)V

    return-void
.end method
