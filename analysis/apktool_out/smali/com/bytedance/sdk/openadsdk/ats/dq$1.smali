.class Lcom/bytedance/sdk/openadsdk/ats/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ats/dq;->d(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Class;

.field final synthetic dq:Ljava/lang/Object;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/ats/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ats/dq;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/ats/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->dq:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->d:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/ats/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->dq:Ljava/lang/Object;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->d:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ats/dq;->dq(Lcom/bytedance/sdk/openadsdk/ats/dq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :goto_0
    nop

    goto :goto_1

    :catchall_1
    move-object v3, p2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/ats/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ats/dq;->dq(Lcom/bytedance/sdk/openadsdk/ats/dq;)Lcom/bytedance/sdk/openadsdk/ats/ox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/ats/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ats/dq;->dq(Lcom/bytedance/sdk/openadsdk/ats/dq;)Lcom/bytedance/sdk/openadsdk/ats/ox;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ats/dq$1;->dq:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
