.class public final Lg/cnd;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/cnd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I

.field final zab:Landroid/os/IBinder;

.field private final zac:Lg/nk;

.field private final zad:Z

.field private final zae:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/cnd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lg/nk;ZZ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/cnd;->zaa:I

    iput-object p2, p0, Lg/cnd;->zab:Landroid/os/IBinder;

    iput-object p3, p0, Lg/cnd;->zac:Lg/nk;

    iput-boolean p4, p0, Lg/cnd;->zad:Z

    iput-boolean p5, p0, Lg/cnd;->zae:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lg/cnd;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lg/cnd;

    iget-object v2, p0, Lg/cnd;->zac:Lg/nk;

    iget-object v3, p1, Lg/cnd;->zac:Lg/nk;

    invoke-virtual {v2, v3}, Lg/nk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lg/cnd;->zab()Lg/fmp;

    move-result-object v2

    invoke-virtual {p1}, Lg/cnd;->zab()Lg/fmp;

    move-result-object p1

    invoke-static {v2, p1}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg/cnd;->zaa:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lg/cnd;->zab:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lg/cnd;->zac:Lg/nk;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lg/cnd;->zad:Z

    invoke-static {p1, v3, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/cnd;->zae:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zaa()Lg/nk;
    .locals 1

    iget-object v0, p0, Lg/cnd;->zac:Lg/nk;

    return-object v0
.end method

.method public final zab()Lg/fmp;
    .locals 4

    iget-object v0, p0, Lg/cnd;->zab:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget v1, Lg/drn;->a:I

    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg/fmp;

    if-eqz v3, :cond_1

    check-cast v2, Lg/fmp;

    return-object v2

    :cond_1
    new-instance v2, Lg/caq;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v2
.end method

.method public final zac()Z
    .locals 1

    iget-boolean v0, p0, Lg/cnd;->zad:Z

    return v0
.end method

.method public final zad()Z
    .locals 1

    iget-boolean v0, p0, Lg/cnd;->zae:Z

    return v0
.end method
