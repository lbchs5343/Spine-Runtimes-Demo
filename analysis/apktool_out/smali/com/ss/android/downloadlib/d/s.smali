.class public Lcom/ss/android/downloadlib/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d/s$dq;
    }
.end annotation


# instance fields
.field private dq:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/d/s;->dq:J

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/d/s$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/d/s;-><init>()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/d/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/d/s;->dq:J

    return-wide v0
.end method

.method public static dq()Lcom/ss/android/downloadlib/d/s;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/d/s$dq;->dq()Lcom/ss/android/downloadlib/d/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/d/s;->dq:J

    return-void
.end method

.method public d(Lcom/ss/android/downloadlib/d/p;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "check_an_result_delay"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v2, v0

    :cond_1
    int-to-long v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/p;J)V

    return-void
.end method

.method public dq(Lcom/ss/android/downloadlib/d/p;)V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/s;->dq(Lcom/ss/android/downloadlib/d/p;J)V

    return-void
.end method

.method public dq(Lcom/ss/android/downloadlib/d/p;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/s;->dq()Lcom/ss/android/downloadlib/s;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/d/s$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ss/android/downloadlib/d/s$1;-><init>(Lcom/ss/android/downloadlib/d/s;JLcom/ss/android/downloadlib/d/p;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/ss/android/downloadlib/s;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method
