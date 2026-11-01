.class Lcom/ss/android/socialbase/downloader/network/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/ox;->d(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$dq;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/ss/android/socialbase/downloader/network/ox$dq;

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/network/ox$d;

.field final synthetic p:Lcom/ss/android/socialbase/downloader/network/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/network/ox;Lcom/ss/android/socialbase/downloader/network/ox$dq;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/ox$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->p:Lcom/ss/android/socialbase/downloader/network/ox;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->dq:Lcom/ss/android/socialbase/downloader/network/ox$dq;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->ox:Lcom/ss/android/socialbase/downloader/network/ox$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->dq:Lcom/ss/android/socialbase/downloader/network/ox$dq;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/ox$2;->ox:Lcom/ss/android/socialbase/downloader/network/ox$d;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/network/ox$d;->dq:Ljava/util/List;

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/ox$dq;->dq(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method
