.class Lcom/ss/android/socialbase/downloader/network/ox$ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/network/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation


# static fields
.field private static final dq:Lcom/ss/android/socialbase/downloader/network/ox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ss/android/socialbase/downloader/network/ox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/network/ox;-><init>(Lcom/ss/android/socialbase/downloader/network/ox$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/ox$ox;->dq:Lcom/ss/android/socialbase/downloader/network/ox;

    return-void
.end method

.method public static synthetic dq()Lcom/ss/android/socialbase/downloader/network/ox;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/ox$ox;->dq:Lcom/ss/android/socialbase/downloader/network/ox;

    return-object v0
.end method
