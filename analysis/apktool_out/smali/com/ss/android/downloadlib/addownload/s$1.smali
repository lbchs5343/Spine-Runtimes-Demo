.class Lcom/ss/android/downloadlib/addownload/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/compliance/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/s;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/s$1;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 8

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/s$1;->dq:I

    const/4 v1, 0x0

    const-string v2, ",tryPerformButtonClick:"

    const-string v3, "miui new get miui deeplink fail: handleDownload id:"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->ox(Lcom/ss/android/downloadlib/addownload/s;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {v0, v4}, Lcom/ss/android/downloadlib/addownload/s;->d(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->ox(Lcom/ss/android/downloadlib/addownload/s;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {v0, v4}, Lcom/ss/android/downloadlib/addownload/s;->ox(Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "download_miui_new_market"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "download_miui_market_deeplink"

    invoke-virtual {v5, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object v3

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget v7, p0, Lcom/ss/android/downloadlib/addownload/s$1;->dq:I

    const/4 v6, 0x1

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/ss/android/downloadlib/mn/ia;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;Lorg/json/JSONObject;ZI)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "download_miui_jump_market_success"

    if-nez p1, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq()Lcom/ss/android/downloadlib/addownload/compliance/iw;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object v1

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {p1, v0, v1, v5}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(ILcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;)V

    iget p1, p0, Lcom/ss/android/downloadlib/addownload/s$1;->dq:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    const-string v2, ",tryPerformButtonClick:"

    const-string v3, "miui new rollback fail: handleDownload id:"

    if-eq p1, v0, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->ox(Lcom/ss/android/downloadlib/addownload/s;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/s;->d(Z)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/s;->ox(Lcom/ss/android/downloadlib/addownload/s;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/s;->ox(Z)V

    return-void

    :cond_2
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq()Lcom/ss/android/downloadlib/addownload/compliance/iw;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$1;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/ia;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {p1, v2, v0, v5}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(ILcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const-string v1, "generate miui new market param error"

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
