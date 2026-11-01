.class public final Lg/eno;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/eno;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:I

.field public final zzg:[Lg/eno;

.field public final zzh:Z

.field public final zzi:Z

.field public zzj:Z

.field public zzk:Z

.field public zzl:Z

.field public zzm:Z

.field public zzn:Z

.field public zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/gin;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lg/gin;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lg/eno;-><init>(Landroid/content/Context;[Lg/gin;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lg/gin;)V
    .locals 13

    invoke-direct {p0}, Lg/exk;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iput-boolean v0, p0, Lg/eno;->zzd:Z

    iget v2, v1, Lg/gin;->f:I

    iget v3, v1, Lg/gin;->h:I

    const/4 v4, -0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    const/4 v4, -0x4

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lg/eno;->zzi:Z

    iput-boolean v0, p0, Lg/eno;->zzm:Z

    iget-boolean v6, v1, Lg/gin;->d:Z

    iput-boolean v6, p0, Lg/eno;->zzn:Z

    iget-boolean v7, v1, Lg/gin;->g:Z

    iput-boolean v7, p0, Lg/eno;->zzo:Z

    if-eqz v4, :cond_1

    sget-object v2, Lg/gin;->a:Lg/gin;

    iget v3, v2, Lg/gin;->f:I

    iput v3, p0, Lg/eno;->zze:I

    iget v3, v2, Lg/gin;->h:I

    iput v3, p0, Lg/eno;->zzb:I

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    iput v2, p0, Lg/eno;->zze:I

    iget v3, v1, Lg/gin;->e:I

    iput v3, p0, Lg/eno;->zzb:I

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    iput v2, p0, Lg/eno;->zze:I

    iget v3, v1, Lg/gin;->j:I

    iput v3, p0, Lg/eno;->zzb:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lg/eno;->zze:I

    iput v3, p0, Lg/eno;->zzb:I

    :goto_1
    iget v2, p0, Lg/eno;->zze:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const/4 v6, -0x2

    if-ne v3, v6, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v2, :cond_9

    sget-object v7, Lg/cbv;->a:Lg/cbv;

    iget-object v7, v7, Lg/cbv;->d:Lg/mx;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v8, 0x258

    if-ge v7, v8, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_8

    if-ne v7, v10, :cond_8

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "dimen"

    const-string v10, "android"

    const-string v11, "navigation_bar_width"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    sub-int/2addr v7, v8

    iput v7, p0, Lg/eno;->zzf:I

    goto :goto_6

    :cond_8
    :goto_5
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lg/eno;->zzf:I

    :goto_6
    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v7

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    iget v9, p0, Lg/eno;->zze:I

    sget-object v7, Lg/cbv;->a:Lg/cbv;

    iget-object v7, v7, Lg/cbv;->d:Lg/mx;

    invoke-static {v6, v9}, Lg/mx;->i(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lg/eno;->zzf:I

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    invoke-static {v6}, Lg/eno;->zze(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_8

    :cond_b
    iget v7, p0, Lg/eno;->zzb:I

    :goto_8
    sget-object v8, Lg/cbv;->a:Lg/cbv;

    iget-object v8, v8, Lg/cbv;->d:Lg/mx;

    invoke-static {v6, v7}, Lg/mx;->i(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lg/eno;->zzc:I

    const-string v6, "_as"

    const-string v8, "x"

    if-nez v2, :cond_10

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    iget-boolean v2, p0, Lg/eno;->zzn:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lg/eno;->zzo:Z

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    if-eqz v4, :cond_e

    const-string v1, "320x50_mb"

    :goto_9
    iput-object v1, p0, Lg/eno;->zza:Ljava/lang/String;

    goto :goto_c

    :cond_e
    iget-object v1, v1, Lg/gin;->i:Ljava/lang/String;

    iput-object v1, p0, Lg/eno;->zza:Ljava/lang/String;

    goto :goto_c

    :cond_f
    :goto_a
    iget v1, p0, Lg/eno;->zze:I

    iget v2, p0, Lg/eno;->zzb:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/eno;->zza:Ljava/lang/String;

    :goto_c
    array-length v1, p2

    if-le v1, v5, :cond_11

    new-array v1, v1, [Lg/eno;

    iput-object v1, p0, Lg/eno;->zzg:[Lg/eno;

    const/4 v1, 0x0

    :goto_d
    array-length v2, p2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lg/eno;->zzg:[Lg/eno;

    new-instance v3, Lg/eno;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lg/eno;-><init>(Landroid/content/Context;Lg/gin;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Lg/eno;->zzg:[Lg/eno;

    :cond_12
    iput-boolean v0, p0, Lg/eno;->zzh:Z

    iput-boolean v0, p0, Lg/eno;->zzj:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/eno;->zza:Ljava/lang/String;

    iput p2, p0, Lg/eno;->zzb:I

    iput p3, p0, Lg/eno;->zzc:I

    iput-boolean p4, p0, Lg/eno;->zzd:Z

    iput p5, p0, Lg/eno;->zze:I

    iput p6, p0, Lg/eno;->zzf:I

    iput-object p7, p0, Lg/eno;->zzg:[Lg/eno;

    iput-boolean p8, p0, Lg/eno;->zzh:Z

    iput-boolean p9, p0, Lg/eno;->zzi:Z

    iput-boolean p10, p0, Lg/eno;->zzj:Z

    iput-boolean p11, p0, Lg/eno;->zzk:Z

    iput-boolean p12, p0, Lg/eno;->zzl:Z

    iput-boolean p13, p0, Lg/eno;->zzm:Z

    iput-boolean p14, p0, Lg/eno;->zzn:Z

    iput-boolean p15, p0, Lg/eno;->zzo:Z

    return-void
.end method

.method public static zza(Landroid/util/DisplayMetrics;)I
    .locals 1

    invoke-static {p0}, Lg/eno;->zze(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static zzb()Lg/eno;
    .locals 16

    new-instance v0, Lg/eno;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-object v0
.end method

.method public static zzc()Lg/eno;
    .locals 16

    new-instance v0, Lg/eno;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-object v0
.end method

.method public static zzd()Lg/eno;
    .locals 16

    new-instance v0, Lg/eno;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-object v0
.end method

.method private static zze(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lg/eno;->zza:Ljava/lang/String;

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lg/eno;->zzb:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/eno;->zzc:I

    invoke-static {p1, v3, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/eno;->zzd:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/eno;->zze:I

    const/4 v2, 0x6

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/eno;->zzf:I

    const/4 v2, 0x7

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    iget-object v2, p0, Lg/eno;->zzg:[Lg/eno;

    invoke-static {p1, v0, v2, p2}, Lg/egh;->ah(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lg/eno;->zzh:Z

    const/16 v0, 0x9

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzi:Z

    const/16 v0, 0xa

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzj:Z

    const/16 v0, 0xb

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzk:Z

    const/16 v0, 0xc

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzl:Z

    const/16 v0, 0xd

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzm:Z

    const/16 v0, 0xe

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzn:Z

    const/16 v0, 0xf

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/eno;->zzo:Z

    const/16 v0, 0x10

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
