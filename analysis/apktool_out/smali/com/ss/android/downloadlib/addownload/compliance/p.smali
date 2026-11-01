.class public Lcom/ss/android/downloadlib/addownload/compliance/p;
.super Lcom/ss/android/socialbase/downloader/kk/ia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/p$d;,
        Lcom/ss/android/downloadlib/addownload/compliance/p$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/socialbase/downloader/kk/ia<",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/downloadlib/addownload/compliance/p$dq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/kk/ia;-><init>(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/p$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/p;-><init>()V

    return-void
.end method

.method private static d(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 2

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p0, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static synthetic dq(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/p;->d(IILandroid/graphics/BitmapFactory$Options;)I

    move-result p0

    return p0
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/compliance/p;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/p$d;->dq()Lcom/ss/android/downloadlib/addownload/compliance/p;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/compliance/p;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public dq(JJLjava/lang/String;)V
    .locals 7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/SoftReference;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/downloadlib/addownload/compliance/p$dq;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/compliance/p$dq;->dq(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xc

    invoke-static {p1, p3, p4}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V

    return-void

    :cond_2
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/p$2;

    move-object v1, p0

    move-wide v5, p1

    move-wide v3, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/downloadlib/addownload/compliance/p$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/p;Ljava/lang/String;JJ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/mn/ox;->dq(Lcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)Lcom/ss/android/downloadlib/mn/ox;

    move-result-object p1

    new-instance p2, Lcom/ss/android/downloadlib/addownload/compliance/p$1;

    invoke-direct {p2, p0, v5, v6}, Lcom/ss/android/downloadlib/addownload/compliance/p$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/p;J)V

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/mn/ox;->dq(Lcom/ss/android/downloadlib/mn/ox$dq;)Lcom/ss/android/downloadlib/mn/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/mn/ox;->dq()V

    return-void
.end method

.method public dq(JLcom/ss/android/downloadlib/addownload/compliance/p$dq;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/compliance/p$dq;->dq(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
