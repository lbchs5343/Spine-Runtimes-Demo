.class final Lcom/ss/android/socialbase/appdownloader/ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/ox;->d(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Z

.field final synthetic p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic s:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->dq:Landroid/content/Context;

    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->d:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->ox:Z

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->s:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/p;->no()V

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->dq:Landroid/content/Context;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->d:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->ox:Z

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->s:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/p;->fw()Lcom/ss/android/socialbase/downloader/depend/ir;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/p;->fw()Lcom/ss/android/socialbase/downloader/depend/ir;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/depend/ir;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/ox$2;->ox:Z

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    return-void
.end method
