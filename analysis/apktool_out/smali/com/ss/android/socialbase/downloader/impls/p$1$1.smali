.class Lcom/ss/android/socialbase/downloader/impls/p$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/p$1;->dq(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/impls/p$1;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/p$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p$1$1;->dq:Lcom/ss/android/socialbase/downloader/impls/p$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p$1$1;->dq:Lcom/ss/android/socialbase/downloader/impls/p$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/p$1;->dq:Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/p;->kk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
