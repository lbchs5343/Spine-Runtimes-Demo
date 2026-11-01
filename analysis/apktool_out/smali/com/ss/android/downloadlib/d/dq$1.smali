.class final Lcom/ss/android/downloadlib/d/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadad/api/dq/dq;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/dq$1;->dq:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 4

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "deeplink_success"

    goto :goto_0

    :cond_0
    const-string v1, "deeplink_failed"

    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/d/dq$1;->dq:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/dq/dq;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->i()Lcom/ss/android/download/api/config/gh;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/dq/dq;->i()Lcom/ss/android/download/api/download/DownloadModel;

    iget-object p1, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/dq/dq;->k()Lcom/ss/android/download/api/download/DownloadController;

    iget-object p1, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/dq/dq;->le()Lcom/ss/android/download/api/download/DownloadEventConfig;

    iget-object p1, p0, Lcom/ss/android/downloadlib/d/dq$1;->d:Lcom/ss/android/downloadad/api/dq/dq;

    invoke-interface {p1}, Lcom/ss/android/downloadad/api/dq/dq;->s()Ljava/lang/String;

    :cond_1
    return-void
.end method
