.class public final enum Lg/fuu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NEW_ARRAY:Lg/fuu;

.field public static final enum SWITCH:Lg/fuu;

.field public static final synthetic a:[Lg/fuu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/fuu;

    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/fuu;->SWITCH:Lg/fuu;

    new-instance v1, Lg/fuu;

    const-string v3, "NEW_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/fuu;->NEW_ARRAY:Lg/fuu;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/fuu;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg/fuu;->a:[Lg/fuu;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fuu;
    .locals 1

    const-class v0, Lg/fuu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fuu;

    return-object p0
.end method

.method public static values()[Lg/fuu;
    .locals 1

    sget-object v0, Lg/fuu;->a:[Lg/fuu;

    invoke-virtual {v0}, [Lg/fuu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fuu;

    return-object v0
.end method
