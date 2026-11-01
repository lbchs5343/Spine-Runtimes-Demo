.class Lcom/ss/android/socialbase/downloader/impls/cd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/cd;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/socialbase/downloader/impls/cd;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/cd;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$3;->d:Lcom/ss/android/socialbase/downloader/impls/cd;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/cd$3;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/cd$3;->d:Lcom/ss/android/socialbase/downloader/impls/cd;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/cd$3;->dq:I

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/cd;->p(Lcom/ss/android/socialbase/downloader/impls/cd;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/impls/cd;->dq(Lcom/ss/android/socialbase/downloader/impls/cd;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
