.class Lcom/ss/android/socialbase/downloader/impls/dq$4;
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
.field final synthetic d:Lcom/ss/android/socialbase/downloader/impls/dq;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$4;->d:Lcom/ss/android/socialbase/downloader/impls/dq;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/dq$4;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/d;->dq()Lcom/ss/android/socialbase/downloader/notification/d;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/dq$4;->dq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/d;->iw(I)V

    return-void
.end method
