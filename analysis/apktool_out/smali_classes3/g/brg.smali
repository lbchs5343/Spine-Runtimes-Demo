.class public Lg/brg;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/brg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:I

.field private final zab:I

.field private final zac:I

.field private final zad:J

.field private final zae:J

.field private final zaf:Ljava/lang/String;

.field private final zag:Ljava/lang/String;

.field private final zah:I

.field private final zai:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/brg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lg/brg;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/brg;->zaa:I

    iput p2, p0, Lg/brg;->zab:I

    iput p3, p0, Lg/brg;->zac:I

    iput-wide p4, p0, Lg/brg;->zad:J

    iput-wide p6, p0, Lg/brg;->zae:J

    iput-object p8, p0, Lg/brg;->zaf:Ljava/lang/String;

    iput-object p9, p0, Lg/brg;->zag:Ljava/lang/String;

    iput p10, p0, Lg/brg;->zah:I

    iput p11, p0, Lg/brg;->zai:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget p2, p0, Lg/brg;->zaa:I

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/brg;->zab:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/brg;->zac:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lg/brg;->zad:J

    const/16 p2, 0x8

    invoke-static {p1, v2, p2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lg/brg;->zae:J

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x6

    iget-object v3, p0, Lg/brg;->zaf:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v3, p0, Lg/brg;->zag:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v1, p0, Lg/brg;->zah:I

    invoke-static {p1, p2, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/brg;->zai:I

    const/16 v1, 0x9

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
