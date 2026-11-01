.class Lcom/ss/android/downloadlib/addownload/compliance/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/mn/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(Lcom/ss/android/downloadlib/addownload/d/s;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/mn/ox$dq<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:J

.field final synthetic ox:Lcom/ss/android/downloadlib/addownload/compliance/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/d;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->ox:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->dq:J

    iput-wide p4, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->p()Lcom/ss/android/download/api/config/ia;

    move-result-object v3

    new-instance v4, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;

    invoke-direct {v4, p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d$2;[Z)V

    const-string v5, "GET"

    invoke-interface {v3, v5, p1, v2, v4}, Lcom/ss/android/download/api/config/ia;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/download/api/config/cd;)V

    aget-boolean p1, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->dq(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
