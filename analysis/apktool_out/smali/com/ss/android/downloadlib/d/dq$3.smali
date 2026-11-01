.class final Lcom/ss/android/downloadlib/d/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/d/s;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/d/s;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/dq$3;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/dq$3;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    iput-object p3, p0, Lcom/ss/android/downloadlib/d/dq$3;->ox:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "open_market"

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/dq$3;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/downloadlib/d/dq$3;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/d/s;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/kk;->dq(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/dq$3;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/d/dq;->dq(Lcom/ss/android/downloadlib/addownload/d/mn;Lcom/ss/android/downloadlib/addownload/d/s;Z)V

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "market_delay_success"

    goto :goto_0

    :cond_1
    const-string v1, "market_delay_failed"

    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/d/dq$3;->ox:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ss/android/downloadlib/d/dq$3;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->i()Lcom/ss/android/download/api/config/gh;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/ss/android/downloadlib/d/dq$3;->d:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    :cond_2
    return-void
.end method
