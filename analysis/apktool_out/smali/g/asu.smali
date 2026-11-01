.class public final Lg/asu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lg/dsg;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p1, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/dsg;->x(I)V

    invoke-virtual {p1}, Lg/dsg;->i()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x12345678

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->h:I

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->b:I

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->e:I

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->c:I

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->i:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->d:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lg/asu;->g:I

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {p1}, Lg/dsg;->i()V

    invoke-virtual {p1, v0}, Lg/dsg;->m(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Lg/dsg;->q()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Lg/dsg;->x(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iput v4, p0, Lg/asu;->f:I

    goto :goto_1

    :cond_1
    iput v4, p0, Lg/asu;->a:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lg/beo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected endian tag: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lg/awf;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
