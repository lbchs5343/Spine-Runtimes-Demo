.class Lcom/ss/android/downloadlib/addownload/compliance/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/iw;->d(Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;[BLcom/ss/android/downloadlib/addownload/compliance/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/d/s;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:[B

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/compliance/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;Lcom/ss/android/downloadlib/addownload/compliance/ia;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->s:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->p:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->s:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

    invoke-static {v0, v1, p1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/compliance/ia;)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->s:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->ox:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->p:[B

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$2;->d:Lcom/ss/android/downloadlib/addownload/compliance/ia;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/compliance/iw;->d(Lcom/ss/android/downloadlib/addownload/compliance/iw;Lcom/ss/android/downloadlib/addownload/d/s;Ljava/lang/String;[BLcom/ss/android/downloadlib/addownload/compliance/ia;)V

    return-void
.end method
