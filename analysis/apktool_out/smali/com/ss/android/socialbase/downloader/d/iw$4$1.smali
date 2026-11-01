.class Lcom/ss/android/socialbase/downloader/d/iw$4$1;
.super Lcom/ss/android/socialbase/downloader/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/iw$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/d/iw$4;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/iw$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw$4;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/d$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/iw$4$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw$4;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/d/iw$4;->dq:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Landroid/util/SparseArray;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw$4;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/d/iw$4;->d:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/kk/iw;->dq(Landroid/util/SparseArray;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw$4;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/d/iw$4;->ox:Lcom/ss/android/socialbase/downloader/d/p;

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/d/p;->dq()V

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/d/iw$4$1;->dq:Lcom/ss/android/socialbase/downloader/d/iw$4;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/d/iw$4;->p:Lcom/ss/android/socialbase/downloader/d/iw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/d/iw;->dq(Lcom/ss/android/socialbase/downloader/d/d;)V

    return-void
.end method
