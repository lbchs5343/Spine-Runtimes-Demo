.class Lcom/bytedance/sdk/component/o/no$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/o/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/o/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/o/no$3;->dq:Lcom/bytedance/sdk/component/o/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/component/o/no$3;->dq:Lcom/bytedance/sdk/component/o/no;

    invoke-static {v1}, Lcom/bytedance/sdk/component/o/no;->dq(Lcom/bytedance/sdk/component/o/no;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "csj-p-wp"

    goto :goto_0

    :cond_0
    const-string v1, "csj-wp"

    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
