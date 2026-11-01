.class Lcom/ss/android/downloadlib/addownload/ig$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private final d:Lcom/ss/android/downloadad/api/dq/d;

.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/ig;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/ig;Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->dq:Lcom/ss/android/downloadlib/addownload/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->d:Lcom/ss/android/downloadad/api/dq/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->d:Lcom/ss/android/downloadad/api/dq/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/api/dq/d;->o(Z)V

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->dq:Lcom/ss/android/downloadlib/addownload/ig;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->d:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/addownload/ig;->dq(Lcom/ss/android/downloadlib/addownload/ig;Lcom/ss/android/downloadad/api/dq/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->d:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/api/dq/d;->o(Z)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/ig$dq;->d:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/api/dq/d;->o(Z)V

    throw v1
.end method
