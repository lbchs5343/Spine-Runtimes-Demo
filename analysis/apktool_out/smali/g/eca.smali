.class public abstract Lg/eca;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg/fzn;

.field public static b:Lg/fc;

.field public static c:Landroid/content/Context;

.field public static d:J

.field public static e:Lg/dzh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fzn;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/fzn;-><init>(I)V

    sput-object v0, Lg/eca;->a:Lg/fzn;

    const/4 v0, 0x0

    sput-object v0, Lg/eca;->b:Lg/fc;

    return-void
.end method

.method public static f()Lg/fc;
    .locals 5

    sget-object v0, Lg/eca;->b:Lg/fc;

    if-nez v0, :cond_0

    const-class v0, Lg/eca;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lg/fc;

    sget-object v2, Lg/eca;->c:Landroid/content/Context;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lg/fc;-><init>(IZ)V

    const-string v3, "npth"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lg/fc;->e:Ljava/lang/Object;

    sput-object v1, Lg/eca;->b:Lg/fc;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lg/eca;->b:Lg/fc;

    return-object v0
.end method
