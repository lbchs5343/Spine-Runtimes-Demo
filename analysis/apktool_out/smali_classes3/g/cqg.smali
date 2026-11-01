.class public Lg/cqg;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/cqg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzc:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/cqg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/cqg;->zza:Ljava/lang/String;

    iput p2, p0, Lg/cqg;->zzb:I

    iput-wide p3, p0, Lg/cqg;->zzc:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/cqg;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lg/cqg;->zzc:J

    const/4 p1, -0x1

    iput p1, p0, Lg/cqg;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lg/cqg;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lg/cqg;

    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lg/cqg;->getVersion()J

    move-result-wide v2

    invoke-virtual {p1}, Lg/cqg;->getVersion()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cqg;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 5

    iget-wide v0, p0, Lg/cqg;->zzc:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lg/cqg;->zzb:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/cqg;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lg/ffr;

    invoke-direct {v0, p0}, Lg/ffr;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/cqg;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lg/ffr;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/ffr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lg/cqg;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lg/cqg;->zzb:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/cqg;->getVersion()J

    move-result-wide v0

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
