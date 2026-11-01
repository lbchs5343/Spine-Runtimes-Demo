.class public final enum Lg/dkz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONSTRUCTOR:Lg/dkz;

.field public static final enum SELF:Lg/dkz;

.field public static final enum SUPER:Lg/dkz;

.field public static final enum THIS:Lg/dkz;

.field public static final synthetic a:[Lg/dkz;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/dkz;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dkz;->CONSTRUCTOR:Lg/dkz;

    new-instance v1, Lg/dkz;

    const-string v3, "SUPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dkz;->SUPER:Lg/dkz;

    new-instance v3, Lg/dkz;

    const-string v5, "THIS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dkz;->THIS:Lg/dkz;

    new-instance v5, Lg/dkz;

    const-string v7, "SELF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dkz;->SELF:Lg/dkz;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/dkz;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/dkz;->a:[Lg/dkz;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dkz;
    .locals 1

    const-class v0, Lg/dkz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dkz;

    return-object p0
.end method

.method public static values()[Lg/dkz;
    .locals 1

    sget-object v0, Lg/dkz;->a:[Lg/dkz;

    invoke-virtual {v0}, [Lg/dkz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dkz;

    return-object v0
.end method
