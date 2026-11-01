.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/drf;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/dzg;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzA()Lcom/google/android/gms/internal/ads/zzfma;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lg/bjq;Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 2

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdju;

    const v1, 0xe8813d8

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final c(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/bhk;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzm()Lcom/google/android/gms/internal/ads/zzdwh;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lg/bjq;I)Lg/apq;
    .locals 1

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzc()Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbxc;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzw()Lcom/google/android/gms/internal/ads/zzfem;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzfem;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfem;

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzfem;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfem;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfem;->zzc()Lcom/google/android/gms/internal/ads/zzfen;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfen;->zza()Lcom/google/android/gms/internal/ads/zzfek;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;ILcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzbkt;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzk()Lcom/google/android/gms/internal/ads/zzdtv;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdtv;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzdtv;->zza(Lcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdtv;->zzc()Lcom/google/android/gms/internal/ads/zzdtw;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdtw;->zzd()Lcom/google/android/gms/internal/ads/zzdtt;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzv()Lcom/google/android/gms/internal/ads/zzfcy;

    move-result-object p4

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzfcy;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzfcy;->zza(Lg/eno;)Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzfcy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfcy;->zzd()Lcom/google/android/gms/internal/ads/zzfcz;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfcz;->zza()Lcom/google/android/gms/internal/ads/zzena;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbzh;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzq()Lg/der;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lg/bjq;Lg/eno;Ljava/lang/String;I)Lg/deq;
    .locals 4

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lg/akx;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0xe8813d8

    invoke-direct {v0, v3, p4, v1, v2}, Lg/akx;-><init>(IIZZ)V

    new-instance p4, Lg/gbf;

    invoke-direct {p4, p1, p2, p3, v0}, Lg/gbf;-><init>(Landroid/content/Context;Lg/eno;Ljava/lang/String;Lg/akx;)V

    return-object p4
.end method

.method public final j(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzu()Lcom/google/android/gms/internal/ads/zzfbh;

    move-result-object p4

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzfbh;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzfbh;->zza(Lg/eno;)Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzfbh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfbh;->zzd()Lcom/google/android/gms/internal/ads/zzfbi;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfbi;->zza()Lcom/google/android/gms/internal/ads/zzely;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/hav;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzelv;-><init>(Lcom/google/android/gms/internal/ads/zzchk;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/ClientApi;->a(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/dzg;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/ClientApi;->c(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/bhk;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbkp;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkq;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/ClientApi;->f(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;ILcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzbkt;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/ClientApi;->n(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/ClientApi;->h(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbzh;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    sget-object p1, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lg/eno;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/ClientApi;->m(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object p1

    move-object v1, v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/gms/ads/internal/ClientApi;->e(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbxc;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {v2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjs;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_8
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    sget-object v0, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/eno;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/gms/ads/internal/ClientApi;->i(Lg/bjq;Lg/eno;Ljava/lang/String;I)Lg/deq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_9
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/ClientApi;->d(Lg/bjq;I)Lg/apq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_a
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/ClientApi;->zzn(Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbtg;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_b
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_c
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzw()Lcom/google/android/gms/internal/ads/zzfem;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfem;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfem;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfem;->zzc()Lcom/google/android/gms/internal/ads/zzfen;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfen;->zzb()Lcom/google/android/gms/internal/ads/zzfeq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_d
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/ClientApi;->b(Lg/bjq;Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_e
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_f
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/android/gms/ads/internal/ClientApi;->k(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/hav;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    :pswitch_10
    move-object v1, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    sget-object v0, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/eno;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/ClientApi;->g(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object v1

    sget-object p1, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lg/eno;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbpf;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/ClientApi;->j(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzt()Lcom/google/android/gms/internal/ads/zzezt;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzezt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzezt;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzezt;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzezt;->zzc()Lcom/google/android/gms/internal/ads/zzezu;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezu;->zza()Lcom/google/android/gms/internal/ads/zzfaz;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbsz;
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzn()Lcom/google/android/gms/internal/ads/zzeea;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lg/bjq;)Lcom/google/android/gms/internal/ads/zzbtg;
    .locals 3

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lg/bfd;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    new-instance v0, Lg/bfd;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0

    :cond_1
    new-instance v0, Lg/bfd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0

    :cond_2
    new-instance v1, Lg/km;

    invoke-direct {v1, p1, v0}, Lg/km;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    :cond_3
    new-instance v0, Lg/bfd;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0

    :cond_4
    new-instance v0, Lg/bfd;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0

    :cond_5
    new-instance v0, Lg/bfd;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lg/bfd;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method
