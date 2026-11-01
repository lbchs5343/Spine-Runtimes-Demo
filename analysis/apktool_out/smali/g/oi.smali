.class public final Lg/oi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/oi;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/oi;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lg/oi;-><init>(IIII)V

    sput-object v0, Lg/oi;->a:Lg/oi;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/oi;->c:I

    iput p2, p0, Lg/oi;->d:I

    iput p3, p0, Lg/oi;->e:I

    iput p4, p0, Lg/oi;->b:I

    return-void
.end method

.method public static f(Lg/oi;Lg/oi;)Lg/oi;
    .locals 4

    iget v0, p0, Lg/oi;->c:I

    iget v1, p1, Lg/oi;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lg/oi;->d:I

    iget v2, p1, Lg/oi;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lg/oi;->e:I

    iget v3, p1, Lg/oi;->e:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p0, Lg/oi;->b:I

    iget p1, p1, Lg/oi;->b:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p0

    return-object p0
.end method

.method public static g(IIII)Lg/oi;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lg/oi;->a:Lg/oi;

    return-object p0

    :cond_0
    new-instance v0, Lg/oi;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/oi;-><init>(IIII)V

    return-object v0
.end method

.method public static h(Landroid/graphics/Insets;)Lg/oi;
    .locals 3

    invoke-static {p0}, Lg/doa;->k(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {p0}, Lg/doa;->l(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p0}, Lg/doa;->y(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p0}, Lg/doa;->n(Landroid/graphics/Insets;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Lg/oi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/oi;

    iget v2, p0, Lg/oi;->b:I

    iget v3, p1, Lg/oi;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lg/oi;->c:I

    iget v3, p1, Lg/oi;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lg/oi;->e:I

    iget v3, p1, Lg/oi;->e:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lg/oi;->d:I

    iget p1, p1, Lg/oi;->d:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lg/oi;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/oi;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/oi;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/oi;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Landroid/graphics/Insets;
    .locals 4

    iget v0, p0, Lg/oi;->e:I

    iget v1, p0, Lg/oi;->b:I

    iget v2, p0, Lg/oi;->c:I

    iget v3, p0, Lg/oi;->d:I

    invoke-static {v2, v3, v0, v1}, Lg/agl;->b(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/oi;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/oi;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/oi;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/oi;->b:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
