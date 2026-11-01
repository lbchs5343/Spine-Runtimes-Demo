.class Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/d$2;->dq(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/compliance/d$2;

.field final synthetic dq:[Z


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/d$2;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->d:Lcom/ss/android/downloadlib/addownload/compliance/d$2;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->dq:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->dq:[Z

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->d:Lcom/ss/android/downloadlib/addownload/compliance/d$2;

    iget-object v2, v1, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->ox:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iget-wide v3, v1, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->dq:J

    iget-wide v5, v1, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->d:J

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(Lcom/ss/android/downloadlib/addownload/compliance/d;JJLjava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->d:Lcom/ss/android/downloadlib/addownload/compliance/d$2;

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->d:J

    const/4 p1, 0x2

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2$1;->dq:[Z

    const/4 v0, 0x0

    aput-boolean v0, p1, v0

    return-void
.end method
