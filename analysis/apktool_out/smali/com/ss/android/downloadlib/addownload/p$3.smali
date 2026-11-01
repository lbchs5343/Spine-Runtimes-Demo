.class Lcom/ss/android/downloadlib/addownload/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/p;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/addownload/s$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/p;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s$d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/p;Lcom/ss/android/downloadlib/addownload/s$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/p$3;->d:Lcom/ss/android/downloadlib/addownload/p;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/p$3;->dq:Lcom/ss/android/downloadlib/addownload/s$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$3;->d:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$3;->d:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/p$3;->d:Lcom/ss/android/downloadlib/addownload/p;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/p;->dq(Lcom/ss/android/downloadlib/addownload/p;Ljava/util/Map;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "apk_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "available_space"

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/p;->ox()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/p$3;->dq:Lcom/ss/android/downloadlib/addownload/s$d;

    invoke-interface {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/s$d;->dq(J)V

    return-void
.end method
