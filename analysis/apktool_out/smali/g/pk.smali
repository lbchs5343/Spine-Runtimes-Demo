.class public final enum Lg/pk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CLASS:Lg/pk;

.field public static final enum DECLARATION:Lg/pk;

.field public static final enum END:Lg/pk;

.field public static final enum FIELD:Lg/pk;

.field public static final enum METHOD:Lg/pk;

.field public static final enum OFFSET:Lg/pk;

.field public static final enum PKG:Lg/pk;

.field public static final enum VAR:Lg/pk;

.field public static final enum VAR_REF:Lg/pk;

.field public static final synthetic a:[Lg/pk;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lg/pk;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/pk;->CLASS:Lg/pk;

    new-instance v1, Lg/pk;

    const-string v3, "FIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/pk;->FIELD:Lg/pk;

    new-instance v3, Lg/pk;

    const-string v5, "METHOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/pk;->METHOD:Lg/pk;

    new-instance v5, Lg/pk;

    const-string v7, "PKG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/pk;->PKG:Lg/pk;

    new-instance v7, Lg/pk;

    const-string v9, "VAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/pk;->VAR:Lg/pk;

    new-instance v9, Lg/pk;

    const-string v11, "VAR_REF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/pk;->VAR_REF:Lg/pk;

    new-instance v11, Lg/pk;

    const-string v13, "DECLARATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/pk;->DECLARATION:Lg/pk;

    new-instance v13, Lg/pk;

    const-string v15, "OFFSET"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/pk;->OFFSET:Lg/pk;

    new-instance v15, Lg/pk;

    const/16 v17, 0x7

    const-string v2, "END"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/pk;->END:Lg/pk;

    const/16 v2, 0x9

    new-array v2, v2, [Lg/pk;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lg/pk;->a:[Lg/pk;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/pk;
    .locals 1

    const-class v0, Lg/pk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/pk;

    return-object p0
.end method

.method public static values()[Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->a:[Lg/pk;

    invoke-virtual {v0}, [Lg/pk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/pk;

    return-object v0
.end method
