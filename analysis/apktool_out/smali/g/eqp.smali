.class public final enum Lg/eqp;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CUSTOM:Lg/eqp;

.field public static final enum CUSTOM_RAW:Lg/eqp;

.field public static final enum DIRECT:Lg/eqp;

.field public static final enum INTERFACE:Lg/eqp;

.field public static final enum POLYMORPHIC:Lg/eqp;

.field public static final enum STATIC:Lg/eqp;

.field public static final enum SUPER:Lg/eqp;

.field public static final enum VIRTUAL:Lg/eqp;

.field public static final synthetic a:[Lg/eqp;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lg/eqp;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/eqp;->STATIC:Lg/eqp;

    new-instance v1, Lg/eqp;

    const-string v3, "DIRECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/eqp;->DIRECT:Lg/eqp;

    new-instance v3, Lg/eqp;

    const-string v5, "VIRTUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/eqp;->VIRTUAL:Lg/eqp;

    new-instance v5, Lg/eqp;

    const-string v7, "INTERFACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/eqp;->INTERFACE:Lg/eqp;

    new-instance v7, Lg/eqp;

    const-string v9, "SUPER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/eqp;->SUPER:Lg/eqp;

    new-instance v9, Lg/eqp;

    const-string v11, "POLYMORPHIC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/eqp;->POLYMORPHIC:Lg/eqp;

    new-instance v11, Lg/eqp;

    const-string v13, "CUSTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/eqp;->CUSTOM:Lg/eqp;

    new-instance v13, Lg/eqp;

    const-string v15, "CUSTOM_RAW"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/eqp;->CUSTOM_RAW:Lg/eqp;

    const/16 v15, 0x8

    new-array v15, v15, [Lg/eqp;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lg/eqp;->a:[Lg/eqp;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/eqp;
    .locals 1

    const-class v0, Lg/eqp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/eqp;

    return-object p0
.end method

.method public static values()[Lg/eqp;
    .locals 1

    sget-object v0, Lg/eqp;->a:[Lg/eqp;

    invoke-virtual {v0}, [Lg/eqp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eqp;

    return-object v0
.end method
