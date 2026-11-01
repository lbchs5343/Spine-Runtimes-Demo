.class public final enum Lg/dun;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum HANDLER:Lg/dun;

.field public static final enum LOOP_EXIT:Lg/dun;

.field public static final enum PREMATURE_EXIT:Lg/dun;

.field public static final enum TRUE_FALLTHROUGH:Lg/dun;

.field public static final synthetic a:[Lg/dun;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/dun;

    const-string v1, "TRUE_FALLTHROUGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dun;->TRUE_FALLTHROUGH:Lg/dun;

    new-instance v1, Lg/dun;

    const-string v3, "PREMATURE_EXIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dun;->PREMATURE_EXIT:Lg/dun;

    new-instance v3, Lg/dun;

    const-string v5, "LOOP_EXIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dun;->LOOP_EXIT:Lg/dun;

    new-instance v5, Lg/dun;

    const-string v7, "HANDLER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dun;->HANDLER:Lg/dun;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/dun;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/dun;->a:[Lg/dun;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dun;
    .locals 1

    const-class v0, Lg/dun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dun;

    return-object p0
.end method

.method public static values()[Lg/dun;
    .locals 1

    sget-object v0, Lg/dun;->a:[Lg/dun;

    invoke-virtual {v0}, [Lg/dun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dun;

    return-object v0
.end method
