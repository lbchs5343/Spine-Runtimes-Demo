.class Lcom/ss/android/downloadlib/addownload/compliance/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/d/s;Lcom/ss/android/downloadlib/addownload/compliance/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/d/s;

.field final synthetic ox:Lcom/ss/android/downloadlib/addownload/compliance/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;Lcom/ss/android/downloadlib/addownload/compliance/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/compliance/iw;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v3, v4, v5, v6}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;ZI)[B

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$1;->d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;[BLcom/ss/android/downloadlib/addownload/compliance/ia;)V

    return-void
.end method
