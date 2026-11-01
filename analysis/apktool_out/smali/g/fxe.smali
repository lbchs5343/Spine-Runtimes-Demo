.class public Lg/fxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/fxe$d;,
        Lg/fxe$e;,
        Lg/fxe$g;,
        Lg/fxe$b;,
        Lg/fxe$f;,
        Lg/fxe$a;,
        Lg/fxe$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fxe;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_AREA_APP:I = 0x1

.field public static final DISPLAY_AREA_APP_LOCKED:I = 0x10

.field public static final DISPLAY_AREA_NONE:I = 0x0

.field public static final DISPLAY_AREA_OTHER:I = 0x100

.field public static final SHOW_ALL:I = 0x11111111

.field public static final SHOW_NO:I = 0x0

.field public static final SHOW_ONLY_CN:I = 0x10

.field public static final SHOW_ONLY_EN:I = 0x1


# instance fields
.field public agreement:Lg/fxe$c;

.field public alliance:Lg/fxe$e;

.field public codekk:Lg/fxe$f;

.field public devTools:Lg/fxe$a;

.field public domain:Ljava/lang/String;

.field public donation:Lg/fxe$b;

.field public net:Lg/fxe$d;

.field public requestInterval:J

.field public update:Lg/fxe$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/fxe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lg/fxe$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$d;

    iput-object v0, p0, Lg/fxe;->net:Lg/fxe$d;

    const-class v0, Lg/fxe$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$e;

    iput-object v0, p0, Lg/fxe;->alliance:Lg/fxe$e;

    const-class v0, Lg/fxe$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$g;

    iput-object v0, p0, Lg/fxe;->update:Lg/fxe$g;

    const-class v0, Lg/fxe$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$b;

    iput-object v0, p0, Lg/fxe;->donation:Lg/fxe$b;

    const-class v0, Lg/fxe$f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$f;

    iput-object v0, p0, Lg/fxe;->codekk:Lg/fxe$f;

    const-class v0, Lg/fxe$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$a;

    iput-object v0, p0, Lg/fxe;->devTools:Lg/fxe$a;

    const-class v0, Lg/fxe$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lg/fxe$c;

    iput-object v0, p0, Lg/fxe;->agreement:Lg/fxe$c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lg/fxe;->requestInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/fxe;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/fxe;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lg/fxe;

    iget-wide v2, p0, Lg/fxe;->requestInterval:J

    iget-wide v4, p1, Lg/fxe;->requestInterval:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lg/fxe;->net:Lg/fxe$d;

    iget-object v2, p1, Lg/fxe;->net:Lg/fxe$d;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lg/fxe;->alliance:Lg/fxe$e;

    iget-object v2, p1, Lg/fxe;->alliance:Lg/fxe$e;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lg/fxe;->update:Lg/fxe$g;

    iget-object v2, p1, Lg/fxe;->update:Lg/fxe$g;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lg/fxe;->donation:Lg/fxe$b;

    iget-object v2, p1, Lg/fxe;->donation:Lg/fxe$b;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lg/fxe;->codekk:Lg/fxe$f;

    iget-object v2, p1, Lg/fxe;->codekk:Lg/fxe$f;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lg/fxe;->devTools:Lg/fxe$a;

    iget-object v2, p1, Lg/fxe;->devTools:Lg/fxe$a;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lg/fxe;->agreement:Lg/fxe$c;

    iget-object v2, p1, Lg/fxe;->agreement:Lg/fxe$c;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lg/fxe;->domain:Ljava/lang/String;

    iget-object p1, p1, Lg/fxe;->domain:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lg/fxe;->net:Lg/fxe$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/fxe$d;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->alliance:Lg/fxe$e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/fxe$e;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->update:Lg/fxe$g;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/fxe$g;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->donation:Lg/fxe$b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lg/fxe$b;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->codekk:Lg/fxe$f;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lg/fxe$f;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->devTools:Lg/fxe$a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lg/fxe$a;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->agreement:Lg/fxe$c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lg/fxe$c;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lg/fxe;->requestInterval:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe;->domain:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lg/fxe;->net:Lg/fxe$d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->alliance:Lg/fxe$e;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->update:Lg/fxe$g;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->donation:Lg/fxe$b;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->codekk:Lg/fxe$f;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->devTools:Lg/fxe$a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/fxe;->agreement:Lg/fxe$c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lg/fxe;->requestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lg/fxe;->domain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
