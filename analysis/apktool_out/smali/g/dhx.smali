.class public final enum Lg/dhx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONSTRUCTOR:Lg/dhx;

.field public static final enum INSTANCE_FIELD:Lg/dhx;

.field public static final synthetic a:[Lg/dhx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/dhx;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dhx;->CONSTRUCTOR:Lg/dhx;

    new-instance v1, Lg/dhx;

    const-string v3, "INSTANCE_FIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dhx;->INSTANCE_FIELD:Lg/dhx;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/dhx;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/dhx;->a:[Lg/dhx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dhx;
    .locals 1

    const-class v0, Lg/dhx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dhx;

    return-object p0
.end method

.method public static values()[Lg/dhx;
    .locals 1

    sget-object v0, Lg/dhx;->a:[Lg/dhx;

    invoke-virtual {v0}, [Lg/dhx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dhx;

    return-object v0
.end method
