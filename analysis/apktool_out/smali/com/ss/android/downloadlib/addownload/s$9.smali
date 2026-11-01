.class Lcom/ss/android/downloadlib/addownload/s$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->mn(Z)V
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

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$9;->d:Lcom/ss/android/downloadlib/addownload/s;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/s$9;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$9;->d:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/s;->iw(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/downloadlib/addownload/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/s$9;->d:Lcom/ss/android/downloadlib/addownload/s;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/s$9;->dq:Z

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/addownload/s;->d(Lcom/ss/android/downloadlib/addownload/s;Z)V

    return-void
.end method
