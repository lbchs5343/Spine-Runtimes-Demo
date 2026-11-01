.class public final enum Lg/euz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ENUM:Lg/euz;

.field public static final enum FLAG:Lg/euz;

.field public static final synthetic a:[Lg/euz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/euz;

    const-string v1, "ENUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/euz;->ENUM:Lg/euz;

    new-instance v1, Lg/euz;

    const-string v3, "FLAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/euz;->FLAG:Lg/euz;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/euz;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/euz;->a:[Lg/euz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/euz;
    .locals 1

    const-class v0, Lg/euz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/euz;

    return-object p0
.end method

.method public static values()[Lg/euz;
    .locals 1

    sget-object v0, Lg/euz;->a:[Lg/euz;

    invoke-virtual {v0}, [Lg/euz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/euz;

    return-object v0
.end method
