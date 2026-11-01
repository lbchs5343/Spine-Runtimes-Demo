.class public Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;
    }
.end annotation


# static fields
.field private static ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

.field private static final no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/bytedance/msdk/api/dq/d;

.field private final dq:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ia:Z

.field private iw:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

.field private volatile kk:Z

.field private mn:Ljava/lang/String;

.field private ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

.field private p:Lcom/bytedance/msdk/api/p/dq/ia/dq;

.field private s:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ia/dq;Lcom/bytedance/msdk/api/p/dq/ia/dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->kk:Z

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object p0
.end method

.method private d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    sget-object v1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    iput-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    new-instance v1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->d:Ljava/lang/Runnable;

    sget-object p1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    new-instance p3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;

    invoke-direct {p3, p0, p2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;)V

    iput-object p3, p1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->ox:Ljava/lang/Runnable;

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/GMRewardAgainDialogActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_show_count"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static dq(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_show_count"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v2
.end method

.method private dq(Lcom/bytedance/msdk/core/admanager/o;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$7;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$7;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/admanager/o;->dq(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$8;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$8;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/core/admanager/o;->d(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no(Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    invoke-direct {v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;-><init>()V

    const-string v3, "ra_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->dq(Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->d(Ljava/lang/String;)V

    const-string v3, "pic_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->ox(Ljava/lang/String;)V

    const-string v3, "btn_ok"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->p(Ljava/lang/String;)V

    const-string v3, "btn_cancel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->s(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ia:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ia:Z

    return p1
.end method

.method public static ia(Ljava/lang/String;)D
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->iw()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static iw(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_play_rit_ts"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-wide v1
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private static iw()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static kk(Ljava/lang/String;)Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    return-object p0
.end method

.method public static mn(Ljava/lang/String;)D
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->ox()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object p0
.end method

.method private static mn()V
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    iput-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->d:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;->ox:Ljava/lang/Runnable;

    return-void
.end method

.method private no(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->no:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static ox(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_show_count_in_hour"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v2
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    return-object p0
.end method

.method public static ox()Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ig:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$dq;

    return-object v0
.end method

.method private ox(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p0, v0, p1, p3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Lcom/bytedance/msdk/d/s;)I

    move-result p1

    iget-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p3, p2, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_1
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    return-object p0
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->mn()V

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_show_count_in_hour"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static s()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static s(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    const-string v1, "ra_play_rit_ts"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->kk:Z

    return-void
.end method

.method public d(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Lcom/bytedance/msdk/d/s;)I
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->kk:Z

    const-string v2, "TTMediationSDK"

    if-nez v1, :cond_0

    const-string v1, "--==--ra: \u8fd8\u672a\u89e6\u53d1rewardVerify"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->s()I

    move-result v3

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Ljava/lang/String;)I

    move-result v4

    const-string v5, ", \u5df2\u7ecf\u5c55\u793a: "

    if-lt v4, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u5c55\u793a\u6b21\u6570\u8d85\u8fc7\u5929\u7ea7\u522b\u9650\u5236\uff0c\u9650\u5236: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    return v1

    :cond_1
    sget-object v3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    if-nez v3, :cond_2

    const-string v1, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u6837\u5f0f\u4e3a\u7a7a"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    return v1

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/mn/dq;->dq()Lcom/bytedance/msdk/core/mn/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/mn/dq;->ox()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "--==--ra: \u547d\u4e2d\u8bf7\u6c42\u7194\u65ad"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    return v1

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/core/kk/mp;->ia(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "--==--ra: \u547d\u4e2d\u5c55\u793a\u9891\u63a7"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    return v1

    :cond_4
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/core/kk/mp;->ox(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "--==--ra: \u547d\u4e2d\u5c55\u793a\u95f4\u9694"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    return v1

    :cond_5
    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v1, v4}, Lcom/bytedance/msdk/core/s/d/p;->d(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)D

    move-result-wide v3

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v8, v3, v6

    if-gtz v8, :cond_6

    const-string v1, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u65e0\u7f13\u5b58\u53ef\u7528"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    return v1

    :cond_6
    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ia(Ljava/lang/String;)D

    move-result-wide v8

    cmpg-double v10, v3, v8

    if-gez v10, :cond_7

    const-string v1, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u6709\u7f13\u5b58\uff0c\u4f46\u662fecpm\u4e0d\u7b26\u5408"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    return v1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq()I

    move-result v8

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox(Ljava/lang/String;)I

    move-result v9

    if-lt v9, v8, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u5c55\u793a\u6b21\u6570\u8d85\u8fc7\u5c0f\u65f6\u7ea7\u522b\u9650\u5236\uff0c\u9650\u5236: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    return v1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->d()J

    move-result-wide v8

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, -0x1

    cmp-long v5, v10, v14

    if-eqz v5, :cond_9

    cmp-long v5, v12, v8

    if-gez v5, :cond_9

    const-string v1, "--==--ra: \u6fc0\u52b1\u518d\u5f97\u5c55\u793a\u95f4\u9694\u8d85\u8fc7\u9650\u5236\uff0cconfig\u95f4\u9694: "

    const-string v3, ", \u5b9e\u9645\u95f4\u9694: "

    invoke-static {v8, v9, v1, v3}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    return v1

    :cond_9
    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->mn(Ljava/lang/String;)D

    move-result-wide v8

    if-eqz p3, :cond_a

    cmpl-double v1, v8, v6

    if-eqz v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    mul-double v5, v5, v8

    cmpg-double v1, v3, v5

    if-gez v1, :cond_a

    const-string v1, "--==--ra: \u6fc0\u52b1\u518d\u5f97ecpm\u4e0b\u63a2\u671f\u95f4\u4e0d\u6ee1\u8db3"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    return v1

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/admanager/o;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/o;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/dq/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d:Lcom/bytedance/msdk/api/dq/d;

    new-instance v2, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/core/admanager/o;->d(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/p/dq/ia/d;)V

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/dq/s/iw;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->iw:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->mn:Ljava/lang/String;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/ia/dq;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox:Lcom/bytedance/msdk/api/p/dq/ia/dq;

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->reward_again_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->ra_pic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->ra_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->ra_btn_ok:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    sget v3, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->ra_btn_cancel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    sget-object v3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/bytedance/msdk/dq/s/d;

    invoke-direct {v2, v1}, Lcom/bytedance/msdk/dq/s/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/d;->ox()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/o/p/d;->dq([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    new-instance v1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;Landroid/app/Dialog;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;

    invoke-direct {p1, p0, v4, v6}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;-><init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    const-string p1, "TTMediationSDK"

    const-string p2, "--==-- reward again show activity dialog"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    return-void
.end method
