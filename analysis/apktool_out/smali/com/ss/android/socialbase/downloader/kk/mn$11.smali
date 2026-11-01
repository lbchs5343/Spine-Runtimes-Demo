.class final Lcom/ss/android/socialbase/downloader/kk/mn$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/ia;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/s;)Lcom/ss/android/socialbase/downloader/downloader/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$11;->dq:Lcom/ss/android/socialbase/downloader/depend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(J)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$11;->dq:Lcom/ss/android/socialbase/downloader/depend/s;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/s;->dq(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
