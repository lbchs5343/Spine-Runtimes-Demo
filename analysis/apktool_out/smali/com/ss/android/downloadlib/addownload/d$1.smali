.class Lcom/ss/android/downloadlib/addownload/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d;->dq(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/d;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$1;->d:Lcom/ss/android/downloadlib/addownload/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$1;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ox()Lcom/ss/android/download/api/config/ig;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/download/api/config/ig;->dq(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d$1;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/s;->mn()V

    :cond_0
    return-void
.end method
