.class public final Lg/ekj;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/ekj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/ekj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-boolean p1, p0, Lg/ekj;->zza:Z

    iput-object p2, p0, Lg/ekj;->zzb:Ljava/lang/String;

    invoke-static {p3}, Lg/acr;->ax(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/ekj;->zzc:I

    const/4 p1, 0x1

    const/4 p2, 0x2

    const/4 p3, 0x3

    filled-new-array {p1, p2, p3}, [I

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget v1, p2, v0

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    if-ne v2, p4, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/ekj;->zzd:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    iget-boolean v0, p0, Lg/ekj;->zza:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lg/ekj;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lg/ekj;->zzc:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/ekj;->zzd:I

    invoke-static {p1, v2, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ekj;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lg/ekj;->zza:Z

    return v0
.end method

.method public final zzc()I
    .locals 7

    iget v0, p0, Lg/ekj;->zzd:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_1

    if-ne v6, v0, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    throw v0

    :cond_2
    return v1
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lg/ekj;->zzc:I

    invoke-static {v0}, Lg/acr;->ax(I)I

    move-result v0

    return v0
.end method
