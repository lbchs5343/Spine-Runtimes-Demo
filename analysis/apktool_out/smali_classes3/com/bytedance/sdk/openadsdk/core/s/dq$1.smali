.class Lcom/bytedance/sdk/openadsdk/core/s/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic ox:[Ljava/lang/StackTraceElement;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/s/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/s/dq;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/s/dq;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->dq:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->ox:[Ljava/lang/StackTraceElement;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/s/dq;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->dq:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->ox:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/s/dq;ILjava/lang/String;[Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/s/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/s/dq;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/s/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/s/dq;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/s/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/s/dq;->d(Lcom/bytedance/sdk/openadsdk/core/s/dq;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
