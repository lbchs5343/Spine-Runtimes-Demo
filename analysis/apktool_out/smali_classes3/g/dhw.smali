.class public Lg/dhw;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/dhw;",
            ">;"
        }
    .end annotation
.end field

.field static final zza:[Lcom/google/android/gms/common/api/Scope;

.field static final zzb:[Lg/cqg;


# instance fields
.field final zzc:I

.field final zzd:I

.field final zze:I

.field zzf:Ljava/lang/String;

.field zzg:Landroid/os/IBinder;

.field zzh:[Lcom/google/android/gms/common/api/Scope;

.field zzi:Landroid/os/Bundle;

.field zzj:Landroid/accounts/Account;

.field zzk:[Lg/cqg;

.field zzl:[Lg/cqg;

.field final zzm:Z

.field final zzn:I

.field zzo:Z

.field private final zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/dhw;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lg/dhw;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lg/cqg;

    sput-object v0, Lg/dhw;->zzb:[Lg/cqg;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lg/cqg;[Lg/cqg;ZIZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lg/exk;-><init>()V

    if-nez p6, :cond_0

    sget-object v1, Lg/dhw;->zza:[Lcom/google/android/gms/common/api/Scope;

    goto :goto_0

    :cond_0
    move-object v1, p6

    :goto_0
    if-nez p7, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object v2, p7

    :goto_1
    if-nez p9, :cond_2

    sget-object v3, Lg/dhw;->zzb:[Lg/cqg;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p9

    :goto_2
    if-nez p10, :cond_3

    sget-object v4, Lg/dhw;->zzb:[Lg/cqg;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p10

    :goto_3
    iput p1, p0, Lg/dhw;->zzc:I

    iput p2, p0, Lg/dhw;->zzd:I

    iput p3, p0, Lg/dhw;->zze:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Lg/dhw;->zzf:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p4, p0, Lg/dhw;->zzf:Ljava/lang/String;

    :goto_4
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    sget p3, Lg/drn;->a:I

    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v5, p4, Lg/fmp;

    if-eqz v5, :cond_5

    check-cast p4, Lg/fmp;

    goto :goto_5

    :cond_5
    new-instance p4, Lg/caq;

    const/4 v5, 0x1

    invoke-direct {p4, p5, p3, v5}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_5
    if-eqz p4, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    check-cast p4, Lg/caq;

    invoke-virtual {p4}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p4, p3, p2}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p2

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lg/bon;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catch_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    :goto_6
    iput-object p1, p0, Lg/dhw;->zzj:Landroid/accounts/Account;

    goto :goto_7

    :cond_7
    iput-object p5, p0, Lg/dhw;->zzg:Landroid/os/IBinder;

    iput-object p8, p0, Lg/dhw;->zzj:Landroid/accounts/Account;

    :goto_7
    iput-object v1, p0, Lg/dhw;->zzh:[Lcom/google/android/gms/common/api/Scope;

    iput-object v2, p0, Lg/dhw;->zzi:Landroid/os/Bundle;

    iput-object v3, p0, Lg/dhw;->zzk:[Lg/cqg;

    iput-object v4, p0, Lg/dhw;->zzl:[Lg/cqg;

    move/from16 p1, p11

    iput-boolean p1, p0, Lg/dhw;->zzm:Z

    move/from16 p1, p12

    iput p1, p0, Lg/dhw;->zzn:I

    move/from16 p1, p13

    iput-boolean p1, p0, Lg/dhw;->zzo:Z

    move-object/from16 p1, p14

    iput-object p1, p0, Lg/dhw;->zzp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtraArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lg/dhw;->zzi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg/dud;->b(Lg/dhw;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dhw;->zzp:Ljava/lang/String;

    return-object v0
.end method
