.class Lcom/ss/android/socialbase/downloader/d/s$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/d/s;->dq(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic ox:I

.field final synthetic p:J

.field final synthetic s:Lcom/ss/android/socialbase/downloader/d/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/d/s;IIIJ)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->s:Lcom/ss/android/socialbase/downloader/d/s;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->dq:I

    iput p3, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->d:I

    iput p4, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->ox:I

    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->s:Lcom/ss/android/socialbase/downloader/d/s;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/s;->d(Lcom/ss/android/socialbase/downloader/d/s;)Lcom/ss/android/socialbase/downloader/d/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/mn;->ox()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->s:Lcom/ss/android/socialbase/downloader/d/s;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->dq:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->d:I

    iget v4, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->ox:I

    iget-wide v5, p0, Lcom/ss/android/socialbase/downloader/d/s$7;->p:J

    invoke-static/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/d/s;->dq(Lcom/ss/android/socialbase/downloader/d/s;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
