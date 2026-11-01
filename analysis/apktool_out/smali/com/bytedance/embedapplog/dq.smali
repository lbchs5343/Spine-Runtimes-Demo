.class public final Lcom/bytedance/embedapplog/dq;
.super Ljava/lang/Object;


# static fields
.field public static d:Z = true

.field public static dq:Lcom/bytedance/embedapplog/c; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile ia:Lcom/bytedance/embedapplog/p; = null

.field private static iw:Z = true

.field private static mn:Z

.field public static ox:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static p:Lcom/bytedance/embedapplog/d;

.field private static volatile s:Lcom/bytedance/embedapplog/u;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/dq;->ox:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static d()V
    .locals 0

    invoke-static {}, Lcom/bytedance/embedapplog/le;->dq()V

    return-void
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/embedapplog/cv;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embedapplog/cv;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "call onEventData get exception: "

    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/jo;->ox(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "call onEventData with invalid params, return"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/embedapplog/c;->dq(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dq()V
    .locals 1

    sget-boolean v0, Lcom/bytedance/embedapplog/dq;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->p()V

    :cond_0
    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/embedapplog/ia;)V
    .locals 4

    sget-object v0, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Init Twice!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ia;->n()Lcom/bytedance/embedapplog/mn;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need to involve setSensitiveInfoProvider!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/embedapplog/le;->iw()Lcom/bytedance/embedapplog/le;

    move-result-object v0

    new-instance v1, Lcom/bytedance/embedapplog/u;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embedapplog/u;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/ia;)V

    new-instance v2, Lcom/bytedance/embedapplog/c;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/embedapplog/c;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/u;)V

    new-instance v3, Lcom/bytedance/embedapplog/cd;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ia;->o()Lcom/bytedance/embedapplog/iw;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/bytedance/embedapplog/cd;-><init>(Lcom/bytedance/embedapplog/iw;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/bytedance/embedapplog/le;->dq(Landroid/app/Application;Lcom/bytedance/embedapplog/u;Lcom/bytedance/embedapplog/c;Lcom/bytedance/embedapplog/cd;)V

    sput-object v1, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    sput-object v2, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    sget-object p1, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/u;->fw()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/embedapplog/collector/Collector;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/collector/Collector;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const-string p0, "Inited"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/jo;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/embedapplog/s;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/embedapplog/bx;->dq(Lcom/bytedance/embedapplog/s;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/bytedance/embedapplog/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/bytedance/embedapplog/dc;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/embedapplog/dc;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2

    new-instance v0, Lcom/bytedance/embedapplog/dc;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/embedapplog/dc;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/le;->dq(Lcom/bytedance/embedapplog/ds;)V

    return-void
.end method

.method public static dq(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/c;->dq(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/embedapplog/dq;->d:Z

    return-void
.end method

.method public static ia()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static ig()Lcom/bytedance/embedapplog/ia;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->t()Lcom/bytedance/embedapplog/ia;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static iw()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/embedapplog/dq;->s:Lcom/bytedance/embedapplog/u;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/u;->r()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static kk()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->kk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static mn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static no()Lcom/bytedance/embedapplog/ox;
    .locals 1

    invoke-static {}, Lcom/bytedance/embedapplog/ij;->dq()Lcom/bytedance/embedapplog/ij;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static ox()Lcom/bytedance/embedapplog/p;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->ia:Lcom/bytedance/embedapplog/p;

    return-object v0
.end method

.method public static p()Lcom/bytedance/embedapplog/d;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->p:Lcom/bytedance/embedapplog/d;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/embedapplog/dq;->dq:Lcom/bytedance/embedapplog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/c;->mp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
