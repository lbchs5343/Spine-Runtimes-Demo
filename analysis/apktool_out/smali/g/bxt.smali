.class public final Lg/bxt;
.super Lg/ape;


# static fields
.field public static final a:I


# instance fields
.field public f:S

.field public g:I

.field public h:I

.field public i:I

.field public j:B

.field public k:B

.field public l:I

.field public m:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fcTL"

    invoke-static {v0}, Lg/ape;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/bxt;->a:I

    return-void
.end method


# virtual methods
.method public final b(Lg/dbj;)V
    .locals 6

    invoke-virtual {p1}, Lg/dbj;->b()I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/bxt;->l:I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/bxt;->g:I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/bxt;->h:I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/bxt;->i:I

    sget-object v0, Lg/dbj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x4

    if-nez v1, :cond_0

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v0, v3}, Lg/bgf;->ak([BII)I

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v5

    int-to-short v1, v1

    iput-short v1, p0, Lg/bxt;->m:S

    sget-object v1, Lg/dbj;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_1

    new-array v5, v2, [B

    invoke-virtual {v1, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v5, v0, v3}, Lg/bgf;->ak([BII)I

    aget-byte v1, v5, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lg/bxt;->f:S

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cxf;

    iget-object v0, p1, Lg/cxf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lg/bxt;->j:B

    iget-object p1, p1, Lg/cxf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput-byte p1, p0, Lg/bxt;->k:B

    return-void
.end method
