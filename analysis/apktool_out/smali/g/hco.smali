.class public final enum Lg/hco;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AWAITING_OPTIONAL_PREDECESSOR_MERGE:Lg/hco;

.field public static final enum NOT_READY:Lg/hco;

.field public static final enum READY_TO_COMPARE:Lg/hco;

.field public static final synthetic a:[Lg/hco;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/hco;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/hco;->NOT_READY:Lg/hco;

    new-instance v1, Lg/hco;

    const-string v3, "AWAITING_OPTIONAL_PREDECESSOR_MERGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/hco;->AWAITING_OPTIONAL_PREDECESSOR_MERGE:Lg/hco;

    new-instance v3, Lg/hco;

    const-string v5, "READY_TO_COMPARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/hco;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/hco;->a:[Lg/hco;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/hco;
    .locals 1

    const-class v0, Lg/hco;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/hco;

    return-object p0
.end method

.method public static values()[Lg/hco;
    .locals 1

    sget-object v0, Lg/hco;->a:[Lg/hco;

    invoke-virtual {v0}, [Lg/hco;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/hco;

    return-object v0
.end method
