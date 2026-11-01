.class Lcom/ss/android/downloadlib/addownload/compliance/d$1;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
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

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->dq:J

    iput-wide p4, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->dq:J

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/d/d;->dq(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(J)V

    const-string p1, "lp_app_dialog_try_show"

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->d:J

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->d(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->ox:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/d;->d(J)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/d$1;->dq(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
