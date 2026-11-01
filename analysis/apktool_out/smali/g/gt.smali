.class public final enum Lg/gt;
.super Ljava/lang/Enum;

# interfaces
.implements Lg/axb;


# static fields
.field public static final synthetic a:[Lg/gt;

.field public static final enum d:Lg/gt;

.field public static final enum dq:Lg/gt;

.field public static final enum ia:Lg/gt;

.field public static final enum iw:Lg/gt;

.field public static final enum kk:Lg/gt;

.field public static final enum mn:Lg/gt;

.field public static final enum no:Lg/gt;

.field public static final enum o:Lg/gt;

.field public static final enum ox:Lg/gt;

.field public static final enum p:Lg/gt;

.field public static final enum s:Lg/gt;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lg/gt;

    const-string v1, "OPERATOR_RESULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gt;->dq:Lg/gt;

    new-instance v1, Lg/gt;

    const-string v3, "BRACKET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gt;->d:Lg/gt;

    new-instance v3, Lg/gt;

    const-string v5, "VARIABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gt;->ox:Lg/gt;

    new-instance v5, Lg/gt;

    const-string v7, "PROPERTY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gt;->p:Lg/gt;

    new-instance v7, Lg/gt;

    const-string v9, "METHOD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/gt;->s:Lg/gt;

    new-instance v9, Lg/gt;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/gt;->iw:Lg/gt;

    new-instance v11, Lg/gt;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/gt;->mn:Lg/gt;

    new-instance v13, Lg/gt;

    const-string v15, "TYPE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/gt;->ia:Lg/gt;

    new-instance v15, Lg/gt;

    const/16 v17, 0x7

    const-string v2, "TYPE_ENUM"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/gt;->kk:Lg/gt;

    new-instance v2, Lg/gt;

    const/16 v19, 0x8

    const-string v4, "ENUM"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/gt;->o:Lg/gt;

    new-instance v4, Lg/gt;

    const/16 v21, 0x9

    const-string v6, "CONSTANT"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/gt;->no:Lg/gt;

    const/16 v6, 0xb

    new-array v6, v6, [Lg/gt;

    aput-object v0, v6, v16

    aput-object v1, v6, v18

    aput-object v3, v6, v20

    aput-object v5, v6, v22

    aput-object v7, v6, v10

    aput-object v9, v6, v12

    aput-object v11, v6, v14

    aput-object v13, v6, v17

    aput-object v15, v6, v19

    aput-object v2, v6, v21

    aput-object v4, v6, v8

    sput-object v6, Lg/gt;->a:[Lg/gt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gt;
    .locals 1

    const-class v0, Lg/gt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gt;

    return-object p0
.end method

.method public static values()[Lg/gt;
    .locals 1

    sget-object v0, Lg/gt;->a:[Lg/gt;

    invoke-virtual {v0}, [Lg/gt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gt;

    return-object v0
.end method
