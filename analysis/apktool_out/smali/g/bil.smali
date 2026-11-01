.class public final Lg/bil;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Lg/cxw;

.field public d:Landroid/graphics/PointF;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:F

.field public h:Landroid/graphics/PointF;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:F

.field public l:F

.field public m:F


# virtual methods
.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lg/bil;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/bil;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg/tn;->k(IILjava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lg/bil;->l:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/bil;->c:Lg/cxw;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/bil;->e:I

    add-int/2addr v2, v0

    iget v0, p0, Lg/bil;->g:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    mul-int/lit8 v2, v2, 0x1f

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lg/bil;->a:I

    add-int/2addr v2, v0

    return v2
.end method
