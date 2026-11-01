.class Lcom/ss/android/downloadlib/addownload/s$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/s;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$8;->d:Lcom/ss/android/downloadlib/addownload/s;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/s$8;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pBCD start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$8;->d:Lcom/ss/android/downloadlib/addownload/s;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/s$8;->dq:Z

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/addownload/s;->dq(Lcom/ss/android/downloadlib/addownload/s;Z)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/s;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pBCD onDenied"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/mn/no;->dq(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
