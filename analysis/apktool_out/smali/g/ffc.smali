.class public final enum Lg/ffc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ARRAY:Lg/ffc;

.field public static final enum GENERIC:Lg/ffc;

.field public static final enum GENERIC_TYPE_VARIABLE:Lg/ffc;

.field public static final enum OBJECT:Lg/ffc;

.field public static final enum OUTER_GENERIC:Lg/ffc;

.field public static final enum PRIMITIVE:Lg/ffc;

.field public static final enum WILDCARD:Lg/ffc;

.field public static final synthetic a:[Lg/ffc;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg/ffc;

    const-string v1, "WILDCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ffc;->WILDCARD:Lg/ffc;

    new-instance v1, Lg/ffc;

    const-string v3, "GENERIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ffc;->GENERIC:Lg/ffc;

    new-instance v3, Lg/ffc;

    const-string v5, "GENERIC_TYPE_VARIABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ffc;->GENERIC_TYPE_VARIABLE:Lg/ffc;

    new-instance v5, Lg/ffc;

    const-string v7, "OUTER_GENERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/ffc;->OUTER_GENERIC:Lg/ffc;

    new-instance v7, Lg/ffc;

    const-string v9, "OBJECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/ffc;->OBJECT:Lg/ffc;

    new-instance v9, Lg/ffc;

    const-string v11, "ARRAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/ffc;->ARRAY:Lg/ffc;

    new-instance v11, Lg/ffc;

    const-string v13, "PRIMITIVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/ffc;->PRIMITIVE:Lg/ffc;

    const/4 v13, 0x7

    new-array v13, v13, [Lg/ffc;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lg/ffc;->a:[Lg/ffc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ffc;
    .locals 1

    const-class v0, Lg/ffc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ffc;

    return-object p0
.end method

.method public static values()[Lg/ffc;
    .locals 1

    sget-object v0, Lg/ffc;->a:[Lg/ffc;

    invoke-virtual {v0}, [Lg/ffc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ffc;

    return-object v0
.end method
