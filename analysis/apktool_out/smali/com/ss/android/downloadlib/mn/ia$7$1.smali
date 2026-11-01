.class Lcom/ss/android/downloadlib/mn/ia$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/mn/ia$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/mn/ia$7;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/mn/ia$7;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iput-object p2, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->dq:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object v1, v0, Lcom/ss/android/downloadlib/mn/ia$7;->d:Landroid/content/Context;

    iget-object v2, v0, Lcom/ss/android/downloadlib/mn/ia$7;->dq:Ljava/lang/String;

    iget-object v0, v0, Lcom/ss/android/downloadlib/mn/ia$7;->ox:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->dq:Lorg/json/JSONObject;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/ss/android/downloadlib/mn/ia;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object v0, v0, Lcom/ss/android/downloadlib/mn/ia$7;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object v3, v3, Lcom/ss/android/downloadlib/mn/ia$7;->dq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/mn/ia;->dq(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/d/mn;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object v1, v1, Lcom/ss/android/downloadlib/mn/ia$7;->ox:Lcom/ss/android/downloadlib/addownload/d/s;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/ss/android/downloadlib/d/dq;->dq(Lcom/ss/android/downloadlib/addownload/d/mn;Lcom/ss/android/downloadlib/addownload/d/s;Z)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->dq:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const-string v1, "ttdownloader_message"

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object p1, p1, Lcom/ss/android/downloadlib/mn/ia$7;->ox:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v0, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->dq:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/downloadlib/mn/ia$7$1;->d:Lcom/ss/android/downloadlib/mn/ia$7;

    iget-object v2, v2, Lcom/ss/android/downloadlib/mn/ia$7;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v3, v1}, Lcom/ss/android/downloadlib/mn/ia;->dq(Lcom/ss/android/downloadlib/addownload/d/s;Lorg/json/JSONObject;IILjava/lang/String;)V

    return-void
.end method
