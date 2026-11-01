.class public final enum Lg/gne;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum END_OF_PATH:Lg/gne;

.field public static final enum NON_MATCHING_INSTRUCTIONS:Lg/gne;

.field public static final enum NON_MATCHING_PATHS:Lg/gne;

.field public static final enum UNMERGEABLE_STATE:Lg/gne;

.field public static final enum UNRESOLVABLE_STATES:Lg/gne;

.field public static final enum USING_CACHED_RESULTS:Lg/gne;

.field public static final synthetic a:[Lg/gne;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lg/gne;

    const-string v1, "NON_MATCHING_INSTRUCTIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gne;->NON_MATCHING_INSTRUCTIONS:Lg/gne;

    new-instance v1, Lg/gne;

    const-string v3, "NON_MATCHING_PATHS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/gne;->NON_MATCHING_PATHS:Lg/gne;

    new-instance v3, Lg/gne;

    const-string v5, "END_OF_PATH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/gne;->END_OF_PATH:Lg/gne;

    new-instance v5, Lg/gne;

    const-string v7, "USING_CACHED_RESULTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/gne;->USING_CACHED_RESULTS:Lg/gne;

    new-instance v7, Lg/gne;

    const-string v9, "UNMERGEABLE_STATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/gne;->UNMERGEABLE_STATE:Lg/gne;

    new-instance v9, Lg/gne;

    const-string v11, "UNRESOLVABLE_STATES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/gne;->UNRESOLVABLE_STATES:Lg/gne;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/gne;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/gne;->a:[Lg/gne;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gne;
    .locals 1

    const-class v0, Lg/gne;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gne;

    return-object p0
.end method

.method public static values()[Lg/gne;
    .locals 1

    sget-object v0, Lg/gne;->a:[Lg/gne;

    invoke-virtual {v0}, [Lg/gne;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gne;

    return-object v0
.end method
