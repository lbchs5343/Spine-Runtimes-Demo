.class public final enum Lg/ecw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FATAL_ERROR:Lg/ecw;

.field public static final enum INVALID_PAYLOAD:Lg/ecw;

.field public static final enum OK:Lg/ecw;

.field public static final enum TRANSIENT_ERROR:Lg/ecw;

.field public static final synthetic a:[Lg/ecw;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/ecw;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ecw;->OK:Lg/ecw;

    new-instance v1, Lg/ecw;

    const-string v3, "TRANSIENT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ecw;->TRANSIENT_ERROR:Lg/ecw;

    new-instance v3, Lg/ecw;

    const-string v5, "FATAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ecw;->FATAL_ERROR:Lg/ecw;

    new-instance v5, Lg/ecw;

    const-string v7, "INVALID_PAYLOAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/ecw;->INVALID_PAYLOAD:Lg/ecw;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/ecw;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/ecw;->a:[Lg/ecw;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ecw;
    .locals 1

    const-class v0, Lg/ecw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ecw;

    return-object p0
.end method

.method public static values()[Lg/ecw;
    .locals 1

    sget-object v0, Lg/ecw;->a:[Lg/ecw;

    invoke-virtual {v0}, [Lg/ecw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ecw;

    return-object v0
.end method
