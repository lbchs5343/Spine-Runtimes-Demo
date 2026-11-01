.class final Lcom/ss/android/socialbase/downloader/kk/mn$20;
.super Lcom/ss/android/socialbase/downloader/depend/jy$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/fw;)Lcom/ss/android/socialbase/downloader/depend/jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/fw;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$20;->dq:Lcom/ss/android/socialbase/downloader/depend/fw;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/jy$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$20;->dq:Lcom/ss/android/socialbase/downloader/depend/fw;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/fw;->dq()V

    return-void
.end method
