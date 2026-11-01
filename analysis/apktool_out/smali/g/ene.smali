.class public final Lg/ene;
.super Lg/ape;


# static fields
.field public static final a:I


# instance fields
.field public f:I

.field public g:[B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IHDR"

    invoke-static {v0}, Lg/ape;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/ene;->a:I

    return-void
.end method


# virtual methods
.method public final b(Lg/dbj;)V
    .locals 3

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/ene;->h:I

    invoke-virtual {p1}, Lg/dbj;->b()I

    move-result v0

    iput v0, p0, Lg/ene;->f:I

    iget-object v0, p0, Lg/ene;->g:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lg/bgf;->ak([BII)I

    return-void
.end method
