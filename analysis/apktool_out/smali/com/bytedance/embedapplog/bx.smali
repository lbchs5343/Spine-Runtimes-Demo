.class public final Lcom/bytedance/embedapplog/bx;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/bytedance/embedapplog/io;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/io<",
            "Lcom/bytedance/embedapplog/sc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/embedapplog/bx$1;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bx$1;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/bx;->dq:Lcom/bytedance/embedapplog/io;

    return-void
.end method

.method public static dq(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {p0}, Lcom/bytedance/embedapplog/xj;->dq(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static dq(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object p1, Lcom/bytedance/embedapplog/bx;->dq:Lcom/bytedance/embedapplog/io;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/bytedance/embedapplog/io;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/embedapplog/sc;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/sc;->dq()Lcom/bytedance/embedapplog/hy;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/embedapplog/dk;

    if-eqz p1, :cond_0

    const/16 p1, 0xc8

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/embedapplog/sc;->dq(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/bytedance/embedapplog/bx;->dq:Lcom/bytedance/embedapplog/io;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/io;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/embedapplog/sc;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/sc;->d()V

    return-void
.end method

.method public static dq(Lcom/bytedance/embedapplog/s;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/embedapplog/sc;->dq(Lcom/bytedance/embedapplog/s;)V

    return-void
.end method
