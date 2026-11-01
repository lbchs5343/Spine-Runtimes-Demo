.class public Lcom/ss/android/download/api/model/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/dq$dq;
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public dq:Ljava/lang/String;

.field public ox:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/dq$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/download/api/model/dq;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/dq$dq;->dq(Lcom/ss/android/download/api/model/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/dq$dq;->d(Lcom/ss/android/download/api/model/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/dq;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/dq$dq;->ox(Lcom/ss/android/download/api/model/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/dq;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/dq$dq;->p(Lcom/ss/android/download/api/model/dq$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/dq;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/dq$dq;->s(Lcom/ss/android/download/api/model/dq$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/dq;->s:Ljava/lang/String;

    return-void
.end method
