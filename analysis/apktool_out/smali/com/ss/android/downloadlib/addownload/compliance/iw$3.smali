.class Lcom/ss/android/downloadlib/addownload/compliance/iw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/iw;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/addownload/compliance/iw;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/iw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$3;->d:Lcom/ss/android/downloadlib/addownload/compliance/iw;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$3;->dq:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/compliance/iw$3;->dq:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/download/api/config/ig;->dq(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
