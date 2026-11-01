.class public Lcom/bytedance/sdk/openadsdk/core/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/n$dq;,
        Lcom/bytedance/sdk/openadsdk/core/n$d;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;

.field public static dq:Ljava/lang/String;

.field private static iw:Lcom/bytedance/sdk/openadsdk/core/n$d;

.field private static mn:J

.field private static ox:Ljava/lang/String;

.field private static volatile p:Z

.field private static volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->dq:Ljava/lang/String;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Ljava/lang/String;

    const-string v0, "Screenshots"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->ox:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->p:Z

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->s:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/n;->mn:J

    return-void
.end method

.method public static d()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->s:Z

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/fnh;->v(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n$1;

    const-string v1, "sso"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/n$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->p(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public static synthetic dq(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/n;->mn:J

    return-wide p0
.end method

.method public static dq()V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->s:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6743\u9650\u68c0\u67e5\u51fa\u9519\u65f6,\u5f02\u5e38\u4ee3\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenShotObserver"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static iw()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static ox()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/n;->mn:J

    return-wide v0
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->s()V

    return-void
.end method

.method private static s()V
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/n;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->iw()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/n$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/n$2;-><init>()V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/n$d;->dq(Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/n$dq;)Lcom/bytedance/sdk/openadsdk/core/n$d;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->iw:Lcom/bytedance/sdk/openadsdk/core/n$d;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/n;->p:Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->iw:Lcom/bytedance/sdk/openadsdk/core/n$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_2
    :goto_0
    return-void
.end method
