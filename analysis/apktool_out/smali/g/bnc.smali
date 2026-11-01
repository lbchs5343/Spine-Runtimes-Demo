.class public final Lg/bnc;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lg/bnc;


# instance fields
.field public volatile b:Landroid/content/Context;


# direct methods
.method public static c()Lg/bnc;
    .locals 2

    sget-object v0, Lg/bnc;->a:Lg/bnc;

    if-nez v0, :cond_0

    new-instance v0, Lg/bnc;

    sget-object v1, Lg/eca;->c:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/bnc;->b:Landroid/content/Context;

    sput-object v0, Lg/bnc;->a:Lg/bnc;

    :cond_0
    sget-object v0, Lg/bnc;->a:Lg/bnc;

    return-object v0
.end method


# virtual methods
.method public final d(Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lg/eca;->e:Lg/dzh;

    invoke-virtual {v0}, Lg/dzh;->ag()Ljava/util/Map;

    const-string v0, "https://apmplus.volces.com/apm/collect/crash"

    iget-object v1, p0, Lg/bnc;->b:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lg/afo;->as(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CrashLogJava"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anr_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".npth"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lg/cro;->ap(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload_scene"

    const-string v3, "direct"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lg/eg;->y(Ljava/lang/String;Ljava/lang/String;Z)Lg/cyl;

    move-result-object p1

    iget p1, p1, Lg/cyl;->e:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method
