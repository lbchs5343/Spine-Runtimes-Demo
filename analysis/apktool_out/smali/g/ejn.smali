.class public Lg/ejn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/ejn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className:Ljava/lang/CharSequence;

.field private eventType:I

.field private packageName:Ljava/lang/CharSequence;

.field private windowTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/ejn;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/ejn;->eventType:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iput v0, p0, Lg/ejn;->eventType:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/ejn;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lg/ejn;

    iget v0, p0, Lg/ejn;->eventType:I

    iget v2, p1, Lg/ejn;->eventType:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    iget-object v2, p1, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    iget-object v2, p1, Lg/ejn;->className:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    iget-object p1, p1, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lg/ejn;->eventType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWindowTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lg/ejn;->eventType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lg/ejn;->eventType:I

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Lg/ejn;->eventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/ejn;->packageName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lg/ejn;->className:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lg/ejn;->windowTitle:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
