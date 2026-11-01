.class public final Lcom/google/android/gms/internal/ads/t;
.super Lcom/google/android/gms/internal/ads/zzgxp;
.source "SourceFile"


# static fields
.field public static final a:[I


# instance fields
.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgxp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgxp;

.field private final zzf:I

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/t;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/t;->zzg:I

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v2

    add-int v3, v1, v2

    new-array v3, v3, [B

    invoke-virtual {p0, v3, v0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzz([BIII)V

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzz([BIII)V

    new-instance p0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/ah;-><init>([B)V

    return-object p0

    :cond_2
    instance-of v3, p0, Lcom/google/android/gms/internal/ads/t;

    if-eqz v3, :cond_5

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/internal/ads/t;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, v2, :cond_3

    iget-object p0, v3, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v2

    add-int v4, v1, v2

    new-array v4, v4, [B

    invoke-virtual {p0, v4, v0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzz([BIII)V

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzz([BIII)V

    new-instance p0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ah;-><init>([B)V

    iget-object p1, v3, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    new-instance v0, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    return-object v0

    :cond_3
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result v2

    if-le v0, v2, :cond_5

    iget v0, v3, Lcom/google/android/gms/internal/ads/t;->zzg:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result v2

    if-gt v0, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, v3, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    new-instance v0, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    iget-object p0, v3, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    new-instance p1, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    return-object p1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->g()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t;->d(I)I

    move-result v0

    if-lt v1, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    return-object v0

    :cond_6
    new-instance v0, Lg/dfa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/dfa;-><init>(I)V

    invoke-virtual {v0, p0}, Lg/dfa;->b(Lcom/google/android/gms/internal/ads/zzgxp;)V

    invoke-virtual {v0, p1}, Lg/dfa;->b(Lcom/google/android/gms/internal/ads/zzgxp;)V

    iget-object p0, v0, Lg/dfa;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxp;

    new-instance v1, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    move-object p1, v1

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public static d(I)I
    .locals 1

    const/16 v0, 0x2f

    if-lt p0, v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/t;->a:[I

    aget p0, v0, p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 11

    if-ne p1, p0, :cond_0

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->q()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->q()I

    move-result v2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-ne v0, v2, :cond_6

    :cond_4
    new-instance v0, Lg/ky;

    invoke-direct {v0, p0}, Lg/ky;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;)V

    invoke-virtual {v0}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object v2

    new-instance v3, Lg/ky;

    invoke-direct {v3, p1}, Lg/ky;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;)V

    invoke-virtual {v3}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_5

    invoke-virtual {v2, p1, v5, v9}, Lcom/google/android/gms/internal/ads/ah;->a(Lcom/google/android/gms/internal/ads/ah;II)Z

    move-result v10

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/ah;->a(Lcom/google/android/gms/internal/ads/ah;II)Z

    move-result v10

    :goto_1
    if-nez v10, :cond_7

    :cond_6
    :goto_2
    return v1

    :cond_7
    add-int/2addr v6, v9

    iget v10, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    if-lt v6, v10, :cond_9

    if-ne v6, v10, :cond_8

    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    if-ne v9, v7, :cond_a

    invoke-virtual {v0}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    add-int/2addr v4, v9

    :goto_4
    if-ne v9, v8, :cond_b

    invoke-virtual {v3}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object p1

    const/4 v5, 0x0

    goto :goto_0

    :cond_b
    add-int/2addr v5, v9

    goto :goto_0
.end method

.method public final f(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzg:I

    return v0
.end method

.method public final h(I)B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->h(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->h(I)B

    move-result p1

    return p1
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t;->d(I)I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lg/fek;

    invoke-direct {v0, p0}, Lg/fek;-><init>(Lcom/google/android/gms/internal/ads/t;)V

    return-object v0
.end method

.method public final j(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzA()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzgyc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->k(Lcom/google/android/gms/internal/ads/zzgyc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->k(Lcom/google/android/gms/internal/ads/zzgyc;)V

    return-void
.end method

.method public final l(I[BII)V
    .locals 2

    add-int v0, p1, p4

    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgxp;->l(I[BII)V

    return-void

    :cond_0
    if-lt p1, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgxp;->l(I[BII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->l(I[BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgxp;->l(I[BII)V

    return-void
.end method

.method public final m(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->m(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->m(III)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->m(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->m(III)I

    move-result p1

    return p1
.end method

.method public final zza(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxp;->o(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t;->h(I)B

    move-result p1

    return p1
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    return v0
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgxp;->n(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzc:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    sub-int/2addr p2, v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzk(II)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzgxp;)V

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t;->g()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/t;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/gms/internal/ads/t;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/ads/ah;

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/t;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/t;->c(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    :goto_3
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/t;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/android/gms/internal/ads/t;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/t;->e(Lcom/google/android/gms/internal/ads/t;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    goto :goto_3

    :cond_4
    check-cast v3, Lcom/google/android/gms/internal/ads/ah;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ah;->zzd()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ah;->zzn()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_7

    or-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_8
    or-int/lit8 v2, v2, 0x4

    goto :goto_5

    :cond_9
    const/4 v1, 0x2

    if-ne v2, v1, :cond_a

    new-instance v1, Lg/fng;

    invoke-direct {v1, v5, v0}, Lg/fng;-><init>(ILjava/util/ArrayList;)V

    return-object v1

    :cond_a
    new-instance v1, Lg/gde;

    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, v1, Lg/gde;->f:Ljava/util/Iterator;

    iput v4, v1, Lg/gde;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget v2, v1, Lg/gde;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lg/gde;->c:I

    goto :goto_6

    :cond_b
    const/4 v0, -0x1

    iput v0, v1, Lg/gde;->d:I

    invoke-virtual {v1}, Lg/gde;->k()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Ljava/nio/ByteBuffer;

    iput-object v0, v1, Lg/gde;->h:Ljava/nio/ByteBuffer;

    iput v4, v1, Lg/gde;->d:I

    iput v4, v1, Lg/gde;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg/gde;->g:J

    :cond_c
    const/16 v0, 0x1000

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzG(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzp()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t;->zzd:Lcom/google/android/gms/internal/ads/zzgxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    iget v2, p0, Lcom/google/android/gms/internal/ads/t;->zzf:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgxp;->f(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public final zzs()Lcom/google/android/gms/internal/ads/zzgxk;
    .locals 1

    new-instance v0, Lg/fek;

    invoke-direct {v0, p0}, Lg/fek;-><init>(Lcom/google/android/gms/internal/ads/t;)V

    return-object v0
.end method
