.class Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/kk/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/io/File;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/kk/dq;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kk/dq;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/kk/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;->d:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kk/dq;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/kk/dq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/kk/dq;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/kk/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kk/dq$dq;->d:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kk/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/kk/dq;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method
