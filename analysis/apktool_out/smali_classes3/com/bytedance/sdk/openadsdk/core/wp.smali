.class public Lcom/bytedance/sdk/openadsdk/core/wp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/wp$dq;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/bl/mn;

.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/h<",
            "Lcom/bytedance/sdk/openadsdk/core/ig/dq;",
            ">;"
        }
    .end annotation
.end field

.field private static final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile p:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->d:Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/wp;->d:Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/wp;->d:Lcom/bytedance/sdk/openadsdk/core/bl/mn;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->d:Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    return-object v0
.end method

.method public static dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ce;->dq()Lcom/bytedance/sdk/openadsdk/core/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ce;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/h<",
            "Lcom/bytedance/sdk/openadsdk/core/ig/dq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/wp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/wp;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/wp;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->dq:Lcom/bytedance/sdk/openadsdk/core/h;

    return-object v0
.end method

.method public static declared-synchronized dq(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/wp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/wp;->p:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/wp;->p:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->p:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp$dq;->dq()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->p:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/wp;->p:Landroid/content/Context;

    return-object v0
.end method
