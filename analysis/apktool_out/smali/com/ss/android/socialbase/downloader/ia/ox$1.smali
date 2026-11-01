.class Lcom/ss/android/socialbase/downloader/ia/ox$1;
.super Lcom/ss/android/socialbase/downloader/depend/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/downloader/ia/ox;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/ia/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/ia/ox$1;->dq:Lcom/ss/android/socialbase/downloader/ia/ox;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/d;-><init>()V

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

    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->dq(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/ia/ox$1;->dq:Lcom/ss/android/socialbase/downloader/ia/ox;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/ia/ox;->dq(Lcom/ss/android/socialbase/downloader/ia/ox;Ljava/util/List;)V

    return-void
.end method
