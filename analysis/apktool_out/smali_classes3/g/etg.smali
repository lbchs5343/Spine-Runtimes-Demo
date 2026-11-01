.class public final Lg/etg;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/etg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Landroid/content/Intent;

.field public final zzi:Lg/fre;

.field public final zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/etg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lg/fre;)V
    .locals 11

    new-instance v9, Lg/bpp;

    invoke-direct {v9, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/etg;->zza:Ljava/lang/String;

    iput-object p2, p0, Lg/etg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lg/etg;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lg/etg;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lg/etg;->zze:Ljava/lang/String;

    iput-object p6, p0, Lg/etg;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lg/etg;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lg/etg;->zzh:Landroid/content/Intent;

    invoke-static {p9}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fre;

    iput-object p1, p0, Lg/etg;->zzi:Lg/fre;

    iput-boolean p10, p0, Lg/etg;->zzj:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/fre;)V
    .locals 11

    new-instance v9, Lg/bpp;

    move-object/from16 v0, p8

    invoke-direct {v9, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lg/etg;->zza:Ljava/lang/String;

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lg/etg;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lg/etg;->zzc:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v3, p0, Lg/etg;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v3, p0, Lg/etg;->zze:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v3, p0, Lg/etg;->zzf:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x8

    iget-object v3, p0, Lg/etg;->zzg:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x9

    iget-object v3, p0, Lg/etg;->zzh:Landroid/content/Intent;

    invoke-static {p1, v0, v3, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Lg/etg;->zzi:Lg/fre;

    new-instance v0, Lg/bpp;

    invoke-direct {v0, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/16 p2, 0xa

    invoke-static {p1, p2, v0}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-boolean p2, p0, Lg/etg;->zzj:Z

    const/16 v0, 0xb

    invoke-static {p1, v0, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
