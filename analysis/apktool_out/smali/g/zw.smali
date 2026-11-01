.class public final enum Lg/zw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BODY_ONLY:Lg/zw;

.field public static final enum BODY_ONLY_NOWRAP:Lg/zw;

.field public static final enum INLINE:Lg/zw;

.field public static final synthetic a:[Lg/zw;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/zw;

    const-string v1, "BODY_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/zw;->BODY_ONLY:Lg/zw;

    new-instance v1, Lg/zw;

    const-string v3, "BODY_ONLY_NOWRAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/zw;->BODY_ONLY_NOWRAP:Lg/zw;

    new-instance v3, Lg/zw;

    const-string v5, "INLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/zw;->INLINE:Lg/zw;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/zw;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/zw;->a:[Lg/zw;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/zw;
    .locals 1

    const-class v0, Lg/zw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/zw;

    return-object p0
.end method

.method public static values()[Lg/zw;
    .locals 1

    sget-object v0, Lg/zw;->a:[Lg/zw;

    invoke-virtual {v0}, [Lg/zw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/zw;

    return-object v0
.end method
