.class final Lcom/ss/android/socialbase/downloader/model/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/socialbase/downloader/model/ox;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/ox$1;->dq(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/model/ox;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/model/ox;
    .locals 1

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/ox;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/model/ox;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public dq(I)[Lcom/ss/android/socialbase/downloader/model/ox;
    .locals 0

    new-array p1, p1, [Lcom/ss/android/socialbase/downloader/model/ox;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/ox$1;->dq(I)[Lcom/ss/android/socialbase/downloader/model/ox;

    move-result-object p1

    return-object p1
.end method
