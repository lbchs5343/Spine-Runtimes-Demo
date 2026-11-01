.class final Lcom/ss/android/socialbase/downloader/kk/mn$16;
.super Lcom/ss/android/socialbase/downloader/depend/r$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/kk/mn;->dq(Lcom/ss/android/socialbase/downloader/depend/le;)Lcom/ss/android/socialbase/downloader/depend/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/depend/le;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/depend/le;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/kk/mn$16;->dq:Lcom/ss/android/socialbase/downloader/depend/le;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/r$dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$16;->dq:Lcom/ss/android/socialbase/downloader/depend/le;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/le;->dq(Ljava/util/List;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/kk/mn$16;->dq:Lcom/ss/android/socialbase/downloader/depend/le;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/le;->dq()Z

    move-result v0

    return v0
.end method
