.class public final enum Lg/cgz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum IGNORE:Lg/cgz;

.field public static final enum OVERWRITE:Lg/cgz;

.field public static final enum READ:Lg/cgz;

.field public static final enum READ_OR_SAVE:Lg/cgz;

.field public static final synthetic a:[Lg/cgz;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/cgz;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cgz;->READ:Lg/cgz;

    new-instance v1, Lg/cgz;

    const-string v3, "READ_OR_SAVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/cgz;->READ_OR_SAVE:Lg/cgz;

    new-instance v3, Lg/cgz;

    const-string v5, "OVERWRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/cgz;->OVERWRITE:Lg/cgz;

    new-instance v5, Lg/cgz;

    const-string v7, "IGNORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/cgz;->IGNORE:Lg/cgz;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/cgz;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/cgz;->a:[Lg/cgz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/cgz;
    .locals 1

    const-class v0, Lg/cgz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/cgz;

    return-object p0
.end method

.method public static values()[Lg/cgz;
    .locals 1

    sget-object v0, Lg/cgz;->a:[Lg/cgz;

    invoke-virtual {v0}, [Lg/cgz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/cgz;

    return-object v0
.end method
