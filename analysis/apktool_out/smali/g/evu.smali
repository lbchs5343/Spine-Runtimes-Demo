.class public final enum Lg/evu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DONT_USE_FALLBACK:Lg/evu;

.field public static final enum FALLBACK_AS_DEFAULT:Lg/evu;

.field public static final enum IGNORE_CENTRAL_DIR_ENTRIES:Lg/evu;

.field public static final enum REPORT_TAMPERING:Lg/evu;

.field public static final synthetic a:[Lg/evu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/evu;

    const-string v1, "IGNORE_CENTRAL_DIR_ENTRIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/evu;->IGNORE_CENTRAL_DIR_ENTRIES:Lg/evu;

    new-instance v1, Lg/evu;

    const-string v3, "REPORT_TAMPERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/evu;->REPORT_TAMPERING:Lg/evu;

    new-instance v3, Lg/evu;

    const-string v5, "FALLBACK_AS_DEFAULT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/evu;->FALLBACK_AS_DEFAULT:Lg/evu;

    new-instance v5, Lg/evu;

    const-string v7, "DONT_USE_FALLBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/evu;->DONT_USE_FALLBACK:Lg/evu;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/evu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/evu;->a:[Lg/evu;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/evu;
    .locals 1

    const-class v0, Lg/evu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/evu;

    return-object p0
.end method

.method public static values()[Lg/evu;
    .locals 1

    sget-object v0, Lg/evu;->a:[Lg/evu;

    invoke-virtual {v0}, [Lg/evu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/evu;

    return-object v0
.end method
