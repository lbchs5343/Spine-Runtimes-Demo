.class public final enum Lg/eis;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLOCK_DUMP:Lg/eis;

.field public static final enum COMMENTED_DUMP:Lg/eis;

.field public static final enum FALLBACK_MODE:Lg/eis;

.field public static final synthetic a:[Lg/eis;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/eis;

    const-string v1, "FALLBACK_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/eis;->FALLBACK_MODE:Lg/eis;

    new-instance v1, Lg/eis;

    const-string v3, "BLOCK_DUMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/eis;->BLOCK_DUMP:Lg/eis;

    new-instance v3, Lg/eis;

    const-string v5, "COMMENTED_DUMP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/eis;->COMMENTED_DUMP:Lg/eis;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/eis;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/eis;->a:[Lg/eis;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/eis;
    .locals 1

    const-class v0, Lg/eis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/eis;

    return-object p0
.end method

.method public static values()[Lg/eis;
    .locals 1

    sget-object v0, Lg/eis;->a:[Lg/eis;

    invoke-virtual {v0}, [Lg/eis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/eis;

    return-object v0
.end method
