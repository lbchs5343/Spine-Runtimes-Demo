.class Lcom/ss/android/socialbase/downloader/d/s$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/s;->iw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/d/s;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/d/s;->s(I)Z

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/d/s;->p(I)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/d/s$11;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/d/s;->mp(I)V

    return-void
.end method
