.class public final Lcom/bytedance/sdk/openadsdk/ox/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/ox/ox;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/ox/d;

.field private ox:Lcom/bytedance/sdk/openadsdk/ox/dq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/ox/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ox/dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/ox/ox;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/ox/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/ox/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/ox/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ox/ox;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ox/ox;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/ox/ox;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq:Lcom/bytedance/sdk/openadsdk/ox/ox;

    return-object v0
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ox/ox$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/ox/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/ox/ox;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/ox/dq$dq;)V

    return-void
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/ox/d;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/ox/d;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-class p1, Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ox/ox;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/ox/d;

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/ox/d;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1

    :pswitch_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ox/dq;->dq()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/ox;->d:Lcom/bytedance/sdk/openadsdk/ox/d;

    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
