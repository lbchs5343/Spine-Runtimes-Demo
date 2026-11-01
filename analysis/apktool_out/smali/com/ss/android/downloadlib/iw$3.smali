.class Lcom/ss/android/downloadlib/iw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/iw;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/iw;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/iw$3;->dq:Lcom/ss/android/downloadlib/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/s;->dq(Ljava/lang/String;)Z

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->jy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/ox;->dq(Z)V

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/mn/dq;->ox()Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v0

    const-string v2, "disable_security_init"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/iw/iw;->dq(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
