.class Lcom/ss/android/downloadlib/addownload/s$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/s;->iw(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/s;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/s;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/s$4;->dq:Lcom/ss/android/downloadlib/addownload/s;

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

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/s$4;->dq:Lcom/ss/android/downloadlib/addownload/s;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/s;->ia(Lcom/ss/android/downloadlib/addownload/s;)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0xd

    const-string v4, "\u5df2\u6062\u590d\u4e0b\u8f7d"

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/download/api/config/ig;->dq(ILandroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
