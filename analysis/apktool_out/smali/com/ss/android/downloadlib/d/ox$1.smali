.class final Lcom/ss/android/downloadlib/d/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/dq/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/ox;->dq(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/guide/install/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/guide/install/dq;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadad/api/dq/d;Lcom/ss/android/downloadlib/guide/install/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/ox$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/ox$1;->d:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    const-string v0, "AppInstallOptimiseHelper"

    const-string v1, "AppInstallOptimiseHelper-->onAppForeground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/ox/dq;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/ox$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/mn/mp;->d(Lcom/ss/android/downloadad/api/dq/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/ox$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/dq/d;->mp(Z)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "install_delay_invoke"

    iget-object v2, p0, Lcom/ss/android/downloadlib/d/ox$1;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->dq(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/d/ox$1;->d:Lcom/ss/android/downloadlib/guide/install/dq;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/dq;->dq()V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 0

    return-void
.end method
