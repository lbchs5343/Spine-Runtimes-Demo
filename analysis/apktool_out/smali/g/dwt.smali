.class public final enum Lg/dwt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ATOMIC:Lg/dwt;

.field public static final enum DEFAULT:Lg/dwt;

.field public static final enum LAZY:Lg/dwt;

.field public static final enum UNDISPATCHED:Lg/dwt;

.field public static final synthetic a:[Lg/dwt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/dwt;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dwt;->DEFAULT:Lg/dwt;

    new-instance v1, Lg/dwt;

    const-string v3, "LAZY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dwt;->LAZY:Lg/dwt;

    new-instance v3, Lg/dwt;

    const-string v5, "ATOMIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dwt;->ATOMIC:Lg/dwt;

    new-instance v5, Lg/dwt;

    const-string v7, "UNDISPATCHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dwt;->UNDISPATCHED:Lg/dwt;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/dwt;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/dwt;->a:[Lg/dwt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dwt;
    .locals 1

    const-class v0, Lg/dwt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dwt;

    return-object p0
.end method

.method public static values()[Lg/dwt;
    .locals 1

    sget-object v0, Lg/dwt;->a:[Lg/dwt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dwt;

    return-object v0
.end method
