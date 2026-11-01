.class public final Lg/gyn;
.super Lg/biz;


# static fields
.field public static final j:[B

.field public static final k:[B

.field public static final l:Ljava/lang/ThreadLocal;


# instance fields
.field public m:[B

.field public final n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public final p:B

.field public final q:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lg/gyn;->k:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lg/gyn;->j:[B

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lg/gyn;->l:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data
.end method

.method public constructor <init>(Lg/dbj;Lg/bxt;)V
    .locals 2

    invoke-direct {p0, p1}, Lg/biz;-><init>(Lg/dbj;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/gyn;->n:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/gyn;->o:Ljava/util/ArrayList;

    iget-byte p1, p2, Lg/bxt;->k:B

    iput-byte p1, p0, Lg/gyn;->p:B

    iget-byte p1, p2, Lg/bxt;->j:B

    iput-byte p1, p0, Lg/gyn;->q:B

    iget-short p1, p2, Lg/bxt;->m:S

    mul-int/lit16 p1, p1, 0x3e8

    iget-short v0, p2, Lg/bxt;->f:S

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/16 v0, 0x64

    :cond_0
    div-int/2addr p1, v0

    iput p1, p0, Lg/biz;->f:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    iput v1, p0, Lg/biz;->f:I

    :cond_1
    iget p1, p2, Lg/bxt;->l:I

    iput p1, p0, Lg/biz;->g:I

    iget p1, p2, Lg/bxt;->g:I

    iput p1, p0, Lg/biz;->h:I

    iget p1, p2, Lg/bxt;->h:I

    iput p1, p0, Lg/biz;->c:I

    iget p1, p2, Lg/bxt;->i:I

    iput p1, p0, Lg/biz;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lg/dcq;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lg/biz;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lg/biz;->i:Landroid/graphics/Rect;

    :try_start_0
    invoke-virtual {p0, p5}, Lg/gyn;->r(Lg/dcq;)I

    move-result v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-object p4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-object p4, p5, Lg/dcq;->f:Ljava/lang/Object;

    check-cast p4, Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p4, v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_2
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    invoke-static {p4, v4, v2, p5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    :goto_0
    iput v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    iput p5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    iput p5, v1, Landroid/graphics/Rect;->bottom:I

    iget p5, p0, Lg/biz;->c:I

    int-to-float p5, p5

    int-to-float p3, p3

    div-float/2addr p5, p3

    float-to-int v2, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lg/biz;->d:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p5, v2

    float-to-int p5, p5

    iput p5, v0, Landroid/graphics/Rect;->right:I

    iget p5, p0, Lg/biz;->d:I

    int-to-float p5, p5

    div-float/2addr p5, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p5, p3

    float-to-int p3, p5

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p4, 0x0

    :goto_2
    return-object p4
.end method

.method public final r(Lg/dcq;)I
    .locals 10

    iget-object v0, p0, Lg/gyn;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x21

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ape;

    iget v2, v2, Lg/ape;->c:I

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/gyn;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ape;

    instance-of v4, v3, Lg/dqv;

    if-eqz v4, :cond_2

    iget v3, v3, Lg/ape;->c:I

    add-int/lit8 v3, v3, 0xc

    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lg/aey;

    if-eqz v4, :cond_1

    iget v3, v3, Lg/ape;->c:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0xc

    invoke-virtual {p1, v1}, Lg/dcq;->k(I)V

    iget-object v2, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    sget-object v3, Lg/gyn;->k:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lg/dcq;->l(I)V

    iget-object v2, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    sget v3, Lg/ene;->a:I

    invoke-virtual {p1, v3}, Lg/dcq;->i(I)V

    iget v3, p0, Lg/biz;->g:I

    invoke-virtual {p1, v3}, Lg/dcq;->l(I)V

    iget v3, p0, Lg/biz;->h:I

    invoke-virtual {p1, v3}, Lg/dcq;->l(I)V

    iget-object v3, p0, Lg/gyn;->m:[B

    iget-object v4, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v3, Lg/gyn;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/CRC32;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    iget-object v3, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/16 v5, 0x11

    invoke-virtual {v4, v3, v2, v5}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lg/dcq;->l(I)V

    iget-object v2, p0, Lg/gyn;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v5, p0, Lg/biz;->e:Lg/dan;

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ape;

    instance-of v6, v3, Lg/bje;

    if-nez v6, :cond_5

    check-cast v5, Lg/dbj;

    invoke-virtual {v5}, Lg/bgf;->af()V

    iget v6, v3, Lg/ape;->d:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lg/bgf;->aa(J)J

    iget-object v6, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    iget v8, v3, Lg/ape;->c:I

    add-int/lit8 v8, v8, 0xc

    invoke-virtual {v5, v6, v7, v8}, Lg/bgf;->ak([BII)I

    iget v3, v3, Lg/ape;->c:I

    add-int/lit8 v3, v3, 0xc

    iget-object v5, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ape;

    instance-of v3, v2, Lg/dqv;

    if-eqz v3, :cond_8

    move-object v3, v5

    check-cast v3, Lg/dbj;

    invoke-virtual {v3}, Lg/bgf;->af()V

    iget v6, v2, Lg/ape;->d:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lg/bgf;->aa(J)J

    iget-object v6, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    iget v8, v2, Lg/ape;->c:I

    add-int/lit8 v8, v8, 0xc

    invoke-virtual {v3, v6, v7, v8}, Lg/bgf;->ak([BII)I

    iget v2, v2, Lg/ape;->c:I

    add-int/lit8 v2, v2, 0xc

    iget-object v3, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_8
    instance-of v3, v2, Lg/aey;

    if-eqz v3, :cond_7

    iget v3, v2, Lg/ape;->c:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Lg/dcq;->l(I)V

    iget-object v3, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sget v6, Lg/dqv;->a:I

    invoke-virtual {p1, v6}, Lg/dcq;->i(I)V

    move-object v6, v5

    check-cast v6, Lg/dbj;

    invoke-virtual {v6}, Lg/bgf;->af()V

    iget v7, v2, Lg/ape;->d:I

    add-int/lit8 v7, v7, 0xc

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lg/bgf;->aa(J)J

    iget-object v7, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget-object v8, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->position()I

    move-result v8

    iget v9, v2, Lg/ape;->c:I

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v6, v7, v8, v9}, Lg/bgf;->ak([BII)I

    iget v6, v2, Lg/ape;->c:I

    add-int/lit8 v6, v6, -0x4

    iget-object v7, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    iget-object v6, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget v2, v2, Lg/ape;->c:I

    invoke-virtual {v4, v6, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lg/dcq;->l(I)V

    goto/16 :goto_3

    :cond_9
    iget-object p1, p1, Lg/dcq;->f:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lg/gyn;->j:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return v1
.end method
