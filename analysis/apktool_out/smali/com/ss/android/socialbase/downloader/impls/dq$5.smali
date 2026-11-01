.class Lcom/ss/android/socialbase/downloader/impls/dq$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/dq;->ox(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:I

.field final synthetic ox:Lcom/ss/android/socialbase/downloader/impls/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/dq;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->dq:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/dq;->ox(I)Lcom/ss/android/socialbase/downloader/ia/ox;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->ox:Lcom/ss/android/socialbase/downloader/impls/dq;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->dq:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/dq$5;->d:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/dq;->d(Lcom/ss/android/socialbase/downloader/impls/dq;IZ)V

    return-void
.end method
