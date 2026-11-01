.class public Lcom/bytedance/sdk/openadsdk/core/kk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/kk$d;,
        Lcom/bytedance/sdk/openadsdk/core/kk$dq;,
        Lcom/bytedance/sdk/openadsdk/core/kk$ox;
    }
.end annotation


# static fields
.field private static final ox:Ljava/lang/Object;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/kk$ox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/kk;->ox:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->d:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/kk$ox;

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/kk$ox;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/kk$ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/kk;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/kk$ox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/kk;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/kk;->ox:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/kk;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kk;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/kk$ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/kk$ox;

    return-object v0
.end method
