.class Lcom/ss/android/downloadlib/addownload/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/download/api/config/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/ia;

.field final synthetic dq:Lcom/ss/android/download/api/config/r;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/ia;Lcom/ss/android/download/api/config/r;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->d:Lcom/ss/android/downloadlib/addownload/ia;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->dq:Lcom/ss/android/download/api/config/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->dq:Lcom/ss/android/download/api/config/r;

    invoke-interface {v0}, Lcom/ss/android/download/api/config/r;->dq()V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->ox()Lcom/ss/android/download/api/config/ig;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->d:Lcom/ss/android/downloadlib/addownload/ia;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/ia;->dq:Lcom/ss/android/downloadlib/addownload/d/s;

    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x1

    const-string v4, "\u60a8\u5df2\u7981\u6b62\u4f7f\u7528\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6388\u6743\u540e\u518d\u4e0b\u8f7d"

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/download/api/config/ig;->dq(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->d:Lcom/ss/android/downloadlib/addownload/ia;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/ia;->dq(Lcom/ss/android/downloadlib/addownload/ia;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/p/dq;->d(JI)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/ia$1;->dq:Lcom/ss/android/download/api/config/r;

    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/r;->dq(Ljava/lang/String;)V

    return-void
.end method
