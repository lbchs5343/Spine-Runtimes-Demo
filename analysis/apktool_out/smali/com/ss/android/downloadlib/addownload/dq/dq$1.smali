.class Lcom/ss/android/downloadlib/addownload/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/model/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/dq/dq;->dq(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;Lcom/ss/android/downloadlib/addownload/dq/dq$dq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic ox:Lcom/ss/android/downloadlib/addownload/d/dq;

.field final synthetic p:Lcom/ss/android/downloadlib/addownload/dq/dq$dq;

.field final synthetic s:Lcom/ss/android/downloadlib/addownload/dq/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/dq/dq;Lcom/ss/android/downloadad/api/dq/d;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/d/dq;Lcom/ss/android/downloadlib/addownload/dq/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->s:Lcom/ss/android/downloadlib/addownload/dq/dq;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->ox:Lcom/ss/android/downloadlib/addownload/d/dq;

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->p:Lcom/ss/android/downloadlib/addownload/dq/dq$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "backdialog_exit"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->p:Lcom/ss/android/downloadlib/addownload/dq/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/dq$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->s:Lcom/ss/android/downloadlib/addownload/dq/dq;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/dq/dq;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public dq(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "backdialog_install"

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->ox:Lcom/ss/android/downloadlib/addownload/d/dq;

    iget-wide v1, v1, Lcom/ss/android/downloadlib/addownload/d/dq;->dq:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Landroid/content/Context;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public ox(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/dq$1;->s:Lcom/ss/android/downloadlib/addownload/dq/dq;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/dq/dq;->d(Ljava/lang/String;)V

    return-void
.end method
