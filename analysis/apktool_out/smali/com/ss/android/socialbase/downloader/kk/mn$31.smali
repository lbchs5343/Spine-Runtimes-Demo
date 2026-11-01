.class final Lcom/ss/android/socialbase/downloader/kk/mn$31;
.super Lcom/ss/android/socialbase/downloader/depend/f$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/cd;)Lcom/ss/android/socialbase/downloader/depend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/cd;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$31;->dq:Lcom/ss/android/socialbase/downloader/depend/cd;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/f$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(JJLcom/ss/android/socialbase/downloader/depend/jy;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$31;->dq:Lcom/ss/android/socialbase/downloader/depend/cd;

    invoke-static {p5}, Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/jy;)Lcom/ss/android/socialbase/downloader/depend/fw;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/depend/cd;->dq(JJLcom/ss/android/socialbase/downloader/depend/fw;)Z

    move-result p1

    return p1
.end method
