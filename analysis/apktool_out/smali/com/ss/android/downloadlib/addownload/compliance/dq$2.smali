.class Lcom/ss/android/downloadlib/addownload/compliance/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/compliance/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$2;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$2;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->d(Lcom/ss/android/downloadlib/addownload/compliance/dq;)Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq$2;->dq:Lcom/ss/android/downloadlib/addownload/compliance/dq;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq(Lcom/ss/android/downloadlib/addownload/compliance/dq;)J

    move-result-wide v0

    const/16 p1, 0x8

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V

    return-void
.end method
