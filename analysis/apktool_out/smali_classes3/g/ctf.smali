.class public final Lg/ctf;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/ctf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lg/cde;

.field public final zzc:Ljava/lang/String;

.field public final zzd:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lg/ctf;J)V
    .locals 1

    invoke-direct {p0}, Lg/exk;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/ctf;->zza:Ljava/lang/String;

    iput-object v0, p0, Lg/ctf;->zza:Ljava/lang/String;

    iget-object v0, p1, Lg/ctf;->zzb:Lg/cde;

    iput-object v0, p0, Lg/ctf;->zzb:Lg/cde;

    iget-object p1, p1, Lg/ctf;->zzc:Ljava/lang/String;

    iput-object p1, p0, Lg/ctf;->zzc:Ljava/lang/String;

    iput-wide p2, p0, Lg/ctf;->zzd:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/ctf;->zza:Ljava/lang/String;

    iput-object p2, p0, Lg/ctf;->zzb:Lg/cde;

    iput-object p3, p0, Lg/ctf;->zzc:Ljava/lang/String;

    iput-wide p4, p0, Lg/ctf;->zzd:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lg/ctf;->zzc:Ljava/lang/String;

    iget-object v1, p0, Lg/ctf;->zza:Ljava/lang/String;

    iget-object v2, p0, Lg/ctf;->zzb:Lg/cde;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",name="

    const-string v4, ",params="

    const-string v5, "origin="

    invoke-static {v5, v0, v3, v1, v4}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg/fbe;->b(Lg/ctf;Landroid/os/Parcel;I)V

    return-void
.end method
