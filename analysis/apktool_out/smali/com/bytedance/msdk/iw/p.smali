.class public Lcom/bytedance/msdk/iw/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/iw/p$dq;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bytedance/msdk/iw/p$dq;

.field private static dq:Landroid/content/Context;

.field private static volatile ox:Lcom/bytedance/msdk/iw/p$dq;


# direct methods
.method public static synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/iw/p;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dq(J)V
    .locals 10

    new-instance v0, Lcom/bytedance/msdk/iw/p$dq;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "sdk_init"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/msdk/iw/p$dq;-><init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V

    sput-object v0, Lcom/bytedance/msdk/iw/p;->d:Lcom/bytedance/msdk/iw/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/p$dq;->dq(Lcom/bytedance/msdk/iw/p$dq;)V

    return-void
.end method

.method public static dq(JIILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/iw/p$dq;

    const-string v1, "sdk_init_end"

    const-wide/16 v2, -0x1

    move-wide v4, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/msdk/iw/p$dq;-><init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V

    sput-object v0, Lcom/bytedance/msdk/iw/p;->ox:Lcom/bytedance/msdk/iw/p$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/iw/p$dq;->dq(Lcom/bytedance/msdk/iw/p$dq;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/bytedance/msdk/iw/p;->dq:Landroid/content/Context;

    return-void
.end method

.method public static dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ox()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/ia/e;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
