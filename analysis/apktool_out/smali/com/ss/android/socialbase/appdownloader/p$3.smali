.class Lcom/ss/android/socialbase/appdownloader/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/impls/cd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/p;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/socialbase/appdownloader/p;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/p$3;->dq:Lcom/ss/android/socialbase/appdownloader/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V

    return-void
.end method
