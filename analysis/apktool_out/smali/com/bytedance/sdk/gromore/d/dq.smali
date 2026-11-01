.class public Lcom/bytedance/sdk/gromore/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# static fields
.field private static d:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private static volatile dq:Lcom/bytedance/sdk/gromore/d/dq;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/gromore/d/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/gromore/d/dq;->dq:Lcom/bytedance/sdk/gromore/d/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/gromore/d/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/gromore/d/dq;->dq:Lcom/bytedance/sdk/gromore/d/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/d/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/gromore/d/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/gromore/d/dq;->dq:Lcom/bytedance/sdk/gromore/d/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/gromore/d/dq;->dq:Lcom/bytedance/sdk/gromore/d/dq;

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/gromore/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/gromore/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1, p1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 p1, 0x4e21

    invoke-virtual {v0, p1, p2}, Lg/hat;->n(ILjava/lang/String;)V

    sget-object p1, Lcom/bytedance/sdk/gromore/d/dq;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x2710

    invoke-interface {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
