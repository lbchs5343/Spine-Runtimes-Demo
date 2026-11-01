.class Lcom/ss/android/socialbase/downloader/d/s$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/s;->p(I)V
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

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/s$4;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/d/s$4;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$4;->d:Lcom/ss/android/socialbase/downloader/d/s;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/s;->d(Lcom/ss/android/socialbase/downloader/d/s;)Lcom/ss/android/socialbase/downloader/d/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/mn;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/s$4;->d:Lcom/ss/android/socialbase/downloader/d/s;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/d/s$4;->dq:I

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/d/s;->dq(Lcom/ss/android/socialbase/downloader/d/s;ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
