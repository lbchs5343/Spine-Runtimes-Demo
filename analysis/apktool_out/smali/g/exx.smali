.class public final Lg/exx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lg/fdp;


# direct methods
.method public constructor <init>(Lg/fdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/exx;->a:Lg/fdp;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    iget-object v0, p0, Lg/exx;->a:Lg/fdp;

    iget-object v0, v0, Lg/fdp;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lg/exx;->a:Lg/fdp;

    iget-object v2, v1, Lg/fdp;->o:Lg/n;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lg/fdp;->h:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lg/fdp;->y(Landroid/media/Image;Landroid/graphics/Rect;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lg/exx;->a:Lg/fdp;

    iget-object v2, v2, Lg/fdp;->o:Lg/n;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lg/n;->c:I

    iget-object v2, v2, Lg/n;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lg/exx;->a:Lg/fdp;

    iget-object v3, v2, Lg/fdp;->o:Lg/n;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lg/exx;->a:Lg/fdp;

    iget-object v5, v5, Lg/fdp;->h:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    iget-object v6, p0, Lg/exx;->a:Lg/fdp;

    iget-object v6, v6, Lg/fdp;->h:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Lg/n;->s(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Lg/gek;

    move-result-object v1

    iput-object v1, v2, Lg/fdp;->l:Lg/gek;

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
