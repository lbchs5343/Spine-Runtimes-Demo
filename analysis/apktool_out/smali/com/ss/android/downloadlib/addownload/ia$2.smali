.class Lcom/ss/android/downloadlib/addownload/ia$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/mn/o$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/ia;->d(Lcom/ss/android/download/api/config/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/ia;

.field final synthetic dq:Lcom/ss/android/download/api/config/r;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/ia;Lcom/ss/android/download/api/config/r;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia$2;->d:Lcom/ss/android/downloadlib/addownload/ia;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia$2;->dq:Lcom/ss/android/download/api/config/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia$2;->dq:Lcom/ss/android/download/api/config/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/r;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia$2;->dq:Lcom/ss/android/download/api/config/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/r;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
