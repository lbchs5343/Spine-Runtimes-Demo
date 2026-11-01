.class public final enum Lg/dne;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum APPEND:Lg/dne;

.field public static final enum APPEND_OR_REPLACE:Lg/dne;

.field public static final enum KEEP:Lg/dne;

.field public static final enum REPLACE:Lg/dne;

.field public static final synthetic a:[Lg/dne;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/dne;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dne;->REPLACE:Lg/dne;

    new-instance v1, Lg/dne;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dne;->KEEP:Lg/dne;

    new-instance v3, Lg/dne;

    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dne;->APPEND:Lg/dne;

    new-instance v5, Lg/dne;

    const-string v7, "APPEND_OR_REPLACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dne;->APPEND_OR_REPLACE:Lg/dne;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/dne;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/dne;->a:[Lg/dne;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dne;
    .locals 1

    const-class v0, Lg/dne;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dne;

    return-object p0
.end method

.method public static values()[Lg/dne;
    .locals 1

    sget-object v0, Lg/dne;->a:[Lg/dne;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dne;

    return-object v0
.end method
