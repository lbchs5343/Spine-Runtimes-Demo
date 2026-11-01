.class public final Lg/abz;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/abz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public zzd:Lg/abz;

.field public zze:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/abz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lg/abz;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/abz;->zza:I

    iput-object p2, p0, Lg/abz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lg/abz;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lg/abz;->zzd:Lg/abz;

    iput-object p5, p0, Lg/abz;->zze:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lg/abz;->zza:I

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v2, p0, Lg/abz;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lg/abz;->zzc:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lg/abz;->zzd:Lg/abz;

    invoke-static {p1, v3, v0, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x5

    iget-object v0, p0, Lg/abz;->zze:Landroid/os/IBinder;

    invoke-static {p1, p2, v0}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lg/ezz;
    .locals 5

    iget-object v0, p0, Lg/abz;->zzd:Lg/abz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/abz;->zzc:Ljava/lang/String;

    iget-object v3, v0, Lg/abz;->zzb:Ljava/lang/String;

    iget v0, v0, Lg/abz;->zza:I

    new-instance v4, Lg/ezz;

    invoke-direct {v4, v0, v3, v2, v1}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    move-object v1, v4

    :goto_0
    iget v0, p0, Lg/abz;->zza:I

    iget-object v2, p0, Lg/abz;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lg/abz;->zzc:Ljava/lang/String;

    new-instance v4, Lg/ezz;

    invoke-direct {v4, v0, v2, v3, v1}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    return-object v4
.end method

.method public final zzb()Lg/bfi;
    .locals 11

    iget-object v0, p0, Lg/abz;->zzd:Lg/abz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/abz;->zzc:Ljava/lang/String;

    iget-object v3, v0, Lg/abz;->zzb:Ljava/lang/String;

    iget v0, v0, Lg/abz;->zza:I

    new-instance v4, Lg/ezz;

    invoke-direct {v4, v0, v3, v2, v1}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    move-object v9, v4

    :goto_0
    iget v6, p0, Lg/abz;->zza:I

    iget-object v7, p0, Lg/abz;->zzb:Ljava/lang/String;

    iget-object v8, p0, Lg/abz;->zzc:Ljava/lang/String;

    new-instance v5, Lg/bfi;

    iget-object v0, p0, Lg/abz;->zze:Landroid/os/IBinder;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "com.google.android.gms.ads.internal.client.IResponseInfo"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/gcq;

    if-eqz v3, :cond_2

    check-cast v2, Lg/gcq;

    goto :goto_1

    :cond_2
    new-instance v2, Lg/py;

    invoke-direct {v2, v0}, Lg/py;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz v2, :cond_3

    new-instance v1, Lg/bof;

    invoke-direct {v1, v2}, Lg/bof;-><init>(Lg/gcq;)V

    :cond_3
    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lg/bfi;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;Lg/bof;)V

    return-object v5
.end method
