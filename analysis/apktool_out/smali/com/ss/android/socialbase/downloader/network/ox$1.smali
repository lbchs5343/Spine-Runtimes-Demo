.class Lcom/ss/android/socialbase/downloader/network/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/ox;->dq(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/network/ox$dq;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:J

.field final synthetic p:Lcom/ss/android/socialbase/downloader/network/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/network/ox;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->p:Lcom/ss/android/socialbase/downloader/network/ox;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->d:Lcom/ss/android/socialbase/downloader/network/ox$dq;

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->ox:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->p:Lcom/ss/android/socialbase/downloader/network/ox;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->d:Lcom/ss/android/socialbase/downloader/network/ox$dq;

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/network/ox$1;->ox:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/network/ox;->dq(Lcom/ss/android/socialbase/downloader/network/ox;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V

    return-void
.end method
