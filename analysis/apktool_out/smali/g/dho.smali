.class public final enum Lg/dho;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONFLICT:Lg/dho;

.field public static final enum CONFLICT_BY_GENERIC:Lg/dho;

.field public static final enum EQUAL:Lg/dho;

.field public static final enum NARROW:Lg/dho;

.field public static final enum NARROW_BY_GENERIC:Lg/dho;

.field public static final enum UNKNOWN:Lg/dho;

.field public static final enum WIDER:Lg/dho;

.field public static final enum WIDER_BY_GENERIC:Lg/dho;

.field public static final synthetic a:[Lg/dho;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lg/dho;

    const-string v1, "EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dho;->EQUAL:Lg/dho;

    new-instance v1, Lg/dho;

    const-string v3, "NARROW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dho;->NARROW:Lg/dho;

    new-instance v3, Lg/dho;

    const-string v5, "NARROW_BY_GENERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    new-instance v5, Lg/dho;

    const-string v7, "WIDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dho;->WIDER:Lg/dho;

    new-instance v7, Lg/dho;

    const-string v9, "WIDER_BY_GENERIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    new-instance v9, Lg/dho;

    const-string v11, "CONFLICT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/dho;->CONFLICT:Lg/dho;

    new-instance v11, Lg/dho;

    const-string v13, "CONFLICT_BY_GENERIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/dho;->CONFLICT_BY_GENERIC:Lg/dho;

    new-instance v13, Lg/dho;

    const-string v15, "UNKNOWN"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/dho;->UNKNOWN:Lg/dho;

    const/16 v15, 0x8

    new-array v15, v15, [Lg/dho;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lg/dho;->a:[Lg/dho;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dho;
    .locals 1

    const-class v0, Lg/dho;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dho;

    return-object p0
.end method

.method public static values()[Lg/dho;
    .locals 1

    sget-object v0, Lg/dho;->a:[Lg/dho;

    invoke-virtual {v0}, [Lg/dho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dho;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lg/dho;->WIDER:Lg/dho;

    if-eq p0, v0, :cond_1

    sget-object v0, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lg/dho;
    .locals 2

    sget-object v0, Lg/fkt;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    return-object v0

    :cond_1
    sget-object v0, Lg/dho;->NARROW:Lg/dho;

    return-object v0

    :cond_2
    sget-object v0, Lg/dho;->WIDER_BY_GENERIC:Lg/dho;

    return-object v0

    :cond_3
    sget-object v0, Lg/dho;->WIDER:Lg/dho;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lg/dho;->EQUAL:Lg/dho;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lg/dho;->NARROW:Lg/dho;

    if-eq p0, v0, :cond_1

    sget-object v0, Lg/dho;->NARROW_BY_GENERIC:Lg/dho;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
