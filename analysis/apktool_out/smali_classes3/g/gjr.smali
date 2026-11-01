.class public final enum Lg/gjr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALLOW:Lg/gjr;

.field public static final enum BLOCK_ALL:Lg/gjr;

.field public static final enum BLOCK_INACCESSIBLE:Lg/gjr;

.field public static final enum INDECISIVE:Lg/gjr;

.field public static final synthetic a:[Lg/gjr;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/gjr;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gjr;->ALLOW:Lg/gjr;

    new-instance v1, Lg/gjr;

    const-string v3, "INDECISIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gjr;->INDECISIVE:Lg/gjr;

    new-instance v3, Lg/gjr;

    const-string v5, "BLOCK_INACCESSIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gjr;->BLOCK_INACCESSIBLE:Lg/gjr;

    new-instance v5, Lg/gjr;

    const-string v7, "BLOCK_ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gjr;->BLOCK_ALL:Lg/gjr;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/gjr;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/gjr;->a:[Lg/gjr;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gjr;
    .locals 1

    const-class v0, Lg/gjr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gjr;

    return-object p0
.end method

.method public static values()[Lg/gjr;
    .locals 1

    sget-object v0, Lg/gjr;->a:[Lg/gjr;

    invoke-virtual {v0}, [Lg/gjr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gjr;

    return-object v0
.end method
