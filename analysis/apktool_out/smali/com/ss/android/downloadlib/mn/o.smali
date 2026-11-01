.class public Lcom/ss/android/downloadlib/mn/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/mn/o$dq;
    }
.end annotation


# static fields
.field private static dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/mn/o$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lg/awf;->ab()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/mn/o;->dq:Ljava/util/Map;

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->s()Lcom/ss/android/download/api/config/kk;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ss/android/download/api/config/kk;->dq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/o;->ox(Ljava/lang/String;)Lcom/ss/android/downloadlib/mn/o$dq;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/ss/android/downloadlib/mn/o$dq;->dq()V

    return-void
.end method

.method private static dq(Ljava/lang/String;Lcom/ss/android/downloadlib/mn/o$dq;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/mn/o;->dq:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ss/android/downloadlib/mn/o;->ox(Ljava/lang/String;)Lcom/ss/android/downloadlib/mn/o$dq;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/ss/android/downloadlib/mn/o$dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static dq([Ljava/lang/String;Lcom/ss/android/downloadlib/mn/o$dq;)V
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/mn/o;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/mn/o$dq;)V

    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static ox(Ljava/lang/String;)Lcom/ss/android/downloadlib/mn/o$dq;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/mn/o;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/downloadlib/mn/o$dq;

    return-object p0
.end method
