.class public final enum Lg/enn;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CALL_SITE:Lg/enn;

.field public static final enum FIELD_REF:Lg/enn;

.field public static final enum METHOD_REF:Lg/enn;

.field public static final enum NONE:Lg/enn;

.field public static final enum STRING_REF:Lg/enn;

.field public static final enum TYPE_REF:Lg/enn;

.field public static final synthetic a:[Lg/enn;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/enn;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/enn;->NONE:Lg/enn;

    new-instance v1, Lg/enn;

    const-string v3, "TYPE_REF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/enn;->TYPE_REF:Lg/enn;

    new-instance v3, Lg/enn;

    const-string v5, "STRING_REF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/enn;->STRING_REF:Lg/enn;

    new-instance v5, Lg/enn;

    const-string v7, "FIELD_REF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/enn;->FIELD_REF:Lg/enn;

    new-instance v7, Lg/enn;

    const-string v9, "METHOD_REF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/enn;->METHOD_REF:Lg/enn;

    new-instance v9, Lg/enn;

    const-string v11, "CALL_SITE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/enn;->CALL_SITE:Lg/enn;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/enn;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/enn;->a:[Lg/enn;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/enn;
    .locals 1

    const-class v0, Lg/enn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/enn;

    return-object p0
.end method

.method public static values()[Lg/enn;
    .locals 1

    sget-object v0, Lg/enn;->a:[Lg/enn;

    invoke-virtual {v0}, [Lg/enn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/enn;

    return-object v0
.end method
