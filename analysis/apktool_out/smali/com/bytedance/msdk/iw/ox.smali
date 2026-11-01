.class public Lcom/bytedance/msdk/iw/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/iw/ox$dq;,
        Lcom/bytedance/msdk/iw/ox$d;
    }
.end annotation


# static fields
.field private static d:J

.field static dq:Ljava/lang/Runnable;

.field private static ia:J

.field private static iw:J

.field private static mn:Lcom/bytedance/msdk/ia/no;

.field private static ox:Z

.field private static p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final s:Landroid/content/ComponentCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/msdk/iw/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/msdk/iw/ox$2;

    invoke-direct {v0}, Lcom/bytedance/msdk/iw/ox$2;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/iw/ox;->dq:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/msdk/iw/ox$3;

    invoke-direct {v0}, Lcom/bytedance/msdk/iw/ox$3;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/iw/ox;->s:Landroid/content/ComponentCallbacks;

    return-void
.end method

.method private static cd()V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/d;->dq(I)V

    return-void
.end method

.method public static synthetic d(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/msdk/iw/ox;->ia:J

    return-wide p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 7

    const-string v0, "TTMediationSDK_SDK_Init"

    const-string v1, "msdk_init v1............."

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/msdk/iw/ox;->dq(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/msdk/iw/ox;->d:J

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->jy()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/iw/p;->dq(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/msdk/ia/ia;->dq()Lcom/bytedance/msdk/ia/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/ia/ia;->ox()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "pre_time"

    sget-wide v5, Lcom/bytedance/msdk/iw/ox;->d:J

    sub-long v5, v1, v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->fw()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    :try_start_1
    const-string v1, "cfg_time"

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    :goto_0
    invoke-static {p0}, Lcom/bytedance/msdk/iw/ox;->ox(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/iw/ox$1;

    invoke-direct {v2, p0}, Lcom/bytedance/msdk/iw/ox$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(ZLorg/json/JSONObject;Lcom/bytedance/msdk/core/iw/d;)V

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->cd()V

    invoke-static {}, Lcom/bytedance/msdk/dq/s/ox;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/bytedance/msdk/iw/ox;->dq:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;J)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/iw/p;->dq()Z

    move-result p0

    const-string v0, "TMe"

    if-nez p0, :cond_0

    const-string p0, "-----==---- \u5ef6\u65f6\u4e0a\u62a5sdk_init"

    invoke-static {v0, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/bytedance/msdk/iw/p;->dq(J)V

    return-void

    :cond_0
    const-string p0, "-----==---- \u6b63\u5e38\u4e0a\u62a5sdk_init"

    invoke-static {v0, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/bytedance/msdk/s/iw;->dq(J)V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/msdk/iw/ox;->ox:Z

    return v0
.end method

.method public static dq()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/iw/ox;->d:J

    return-wide v0
.end method

.method public static synthetic dq(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/msdk/iw/ox;->iw:J

    return-wide p0
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bytedance/msdk/core/dq;->dq(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Landroid/content/Context;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/msdk/iw/ox;->d(Landroid/content/Context;J)V

    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/d/d;->ox()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/dq/dq/p;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/d;->bl()Lcom/bytedance/msdk/api/p/q;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/bytedance/msdk/dq/dq/p;->dq(Lcom/bytedance/msdk/api/p/q;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dq(Lcom/bytedance/msdk/api/p/dq;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->jy()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/d;->dq(J)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->iw(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->ox(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->ox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->s(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->iw(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->s()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq([I)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->iw()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq([Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->dq()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->p(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->d(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->ia()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq(Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->kk()Lcom/bytedance/msdk/api/p/iw;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/core/d;->dq(Lcom/bytedance/msdk/api/p/iw;Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->iw()Lcom/bytedance/msdk/api/p/ig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ig;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->mn(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->o()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->d(Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->q()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->ox(Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->no()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->mn(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->ig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->ia(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->mp()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->mn()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ia;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->kk(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->mn()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ia;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->ia(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->mn()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ia;->ox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->o(Z)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->mn()Lcom/bytedance/msdk/api/p/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/ia;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->no(Z)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->q()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->q()Ljava/util/Map;

    move-result-object v0

    const-string v1, "primeRitList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/d;->dq(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->ia()Lcom/bytedance/msdk/api/p/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/dq;->ia()Lcom/bytedance/msdk/api/p/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/p/p;->dq()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/d;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/p/dq;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/iw/ox;->dq(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bytedance/msdk/iw/ox;->dq(Lcom/bytedance/msdk/api/p/dq;)V

    invoke-static {p1}, Lcom/bytedance/msdk/iw/ox;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/msdk/iw/ox;->ox:Z

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->mp()V

    return-void
.end method

.method private static f()V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/ia/c;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "b_msg_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bytedance/msdk/iw/ox$d;->dq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static fw()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InitHelper-->initSetting->loadData Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static gh()V
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->ji()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->r()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/msdk/iw/ox$5;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/ox$5;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic ia()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->gh()V

    return-void
.end method

.method public static synthetic ig()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->r()V

    return-void
.end method

.method public static synthetic iw()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/iw/ox;->d:J

    return-wide v0
.end method

.method private static jy()V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string v0, "AppStateListener\u6ce8\u518c\u5931\u8d25, app = null"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "AppStateListener\u6ce8\u518c\u6210\u529f"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/msdk/iw/ox;->mn:Lcom/bytedance/msdk/ia/no;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ia/no;->dq(Landroid/app/Application;)V

    :cond_1
    new-instance v1, Lcom/bytedance/msdk/ia/no;

    invoke-direct {v1}, Lcom/bytedance/msdk/ia/no;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/iw/ox;->mn:Lcom/bytedance/msdk/ia/no;

    new-instance v2, Lcom/bytedance/msdk/iw/ox$4;

    invoke-direct {v2}, Lcom/bytedance/msdk/iw/ox$4;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/ia/no;->dq(Landroid/app/Application;Lcom/bytedance/msdk/ia/no$dq;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->mp()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/iw/ox$dq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bytedance/msdk/iw/ox$dq;-><init>(Lcom/bytedance/msdk/iw/ox$1;)V

    sget-object v4, Lcom/bytedance/msdk/iw/ox$d;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static synthetic kk()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/iw/ox;->iw:J

    return-wide v0
.end method

.method public static synthetic mn()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->q()V

    return-void
.end method

.method private static mp()V
    .locals 2

    sget-boolean v0, Lcom/bytedance/msdk/iw/ox;->ox:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->t()Lcom/bytedance/msdk/api/p/dq/kk/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/kk/dq;->dq()V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/d;->dq(Lcom/bytedance/msdk/api/p/dq/kk/dq;)V

    :cond_0
    return-void
.end method

.method public static synthetic no()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->f()V

    return-void
.end method

.method public static synthetic o()J
    .locals 2

    sget-wide v0, Lcom/bytedance/msdk/iw/ox;->ia:J

    return-wide v0
.end method

.method public static ox()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/dq/p;->ox()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static ox(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/msdk/s/ox;->dq()V

    return-void
.end method

.method public static p()V
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/iw/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521d\u59cb\u5316TNC initTTAdNetTNC\uff1asupportTNC\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager_GroMore"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->n()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/p/d;->dq()Lcom/bytedance/msdk/p/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/p/d;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v2

    new-instance v3, Lcom/bytedance/msdk/p/dq;

    invoke-direct {v3, v0}, Lcom/bytedance/msdk/p/dq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/sdk/component/kk/dq;->dq(Landroid/content/Context;ZLcom/bytedance/sdk/component/kk/ox/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/bytedance/msdk/iw/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static q()V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq$dq;->dq()Landroid/app/Application;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string v0, "lowMemoryListener\u6ce8\u518c\u5931\u8d25, app = null"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "lowMemoryListener\u6ce8\u518c\u6210\u529f"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/msdk/iw/ox;->s:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private static r()V
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->op()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->ir()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/msdk/ia/r;->dq([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/bytedance/msdk/ia/r;->dq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static s()V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->d(I)V

    sget-object v0, Lcom/bytedance/msdk/iw/ox;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->p()V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "TNCManager_GroMore"

    const-string v2, "\u5c1d\u8bd5\u5237\u65b0TNC tryRefreshTNCConfig"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/p/d;->dq()Lcom/bytedance/msdk/p/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/p/d;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/kk/dq;->dq(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
