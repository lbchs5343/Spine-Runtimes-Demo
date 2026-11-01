.class final Lcom/ss/android/downloadlib/mn/ia$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/mn/ia;->ia(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/ss/android/downloadlib/addownload/d/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/mn/ia$7;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/downloadlib/mn/ia$7;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/mn/ia$7;->ox:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    const-string v3, "v"

    invoke-static {v0, v1, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "p"

    iget-object v3, p0, Lcom/ss/android/downloadlib/mn/ia$7;->dq:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->cd()Lcom/ss/android/download/api/config/fw;

    move-result-object v1

    array-length v3, v0

    invoke-interface {v1, v0, v3}, Lcom/ss/android/download/api/config/fw;->dq([BI)[B

    move-result-object v5

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->p()Lcom/ss/android/download/api/config/ia;

    move-result-object v3

    new-instance v8, Lcom/ss/android/downloadlib/mn/ia$7$1;

    invoke-direct {v8, p0, v2}, Lcom/ss/android/downloadlib/mn/ia$7$1;-><init>(Lcom/ss/android/downloadlib/mn/ia$7;Lorg/json/JSONObject;)V

    const-string v6, "application/octet-stream;tt-data=a"

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/download/api/config/ia;->dq(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/download/api/config/cd;)V

    return-void
.end method
