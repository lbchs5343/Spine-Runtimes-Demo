.class public final enum Lg/ue;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CONTENT_BINARY:Lg/ue;

.field public static final enum CONTENT_NONE:Lg/ue;

.field public static final enum CONTENT_TEXT:Lg/ue;

.field public static final enum CONTENT_UNKNOWN:Lg/ue;

.field public static final synthetic a:[Lg/ue;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/ue;

    const-string v1, "CONTENT_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ue;->CONTENT_TEXT:Lg/ue;

    new-instance v1, Lg/ue;

    const-string v3, "CONTENT_BINARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ue;->CONTENT_BINARY:Lg/ue;

    new-instance v3, Lg/ue;

    const-string v5, "CONTENT_NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ue;->CONTENT_NONE:Lg/ue;

    new-instance v5, Lg/ue;

    const-string v7, "CONTENT_UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/ue;->CONTENT_UNKNOWN:Lg/ue;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/ue;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/ue;->a:[Lg/ue;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ue;
    .locals 1

    const-class v0, Lg/ue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ue;

    return-object p0
.end method

.method public static values()[Lg/ue;
    .locals 1

    sget-object v0, Lg/ue;->a:[Lg/ue;

    invoke-virtual {v0}, [Lg/ue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ue;

    return-object v0
.end method
