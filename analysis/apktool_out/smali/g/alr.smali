.class public final enum Lg/alr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTHORIZE:Lg/alr;

.field public static final enum AUTHORIZED:Lg/alr;

.field public static final enum INSTALL:Lg/alr;

.field public static final enum START:Lg/alr;

.field public static final enum UPDATE:Lg/alr;

.field public static final synthetic a:[Lg/alr;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/alr;

    const-string v1, "INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/alr;->INSTALL:Lg/alr;

    new-instance v1, Lg/alr;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/alr;->START:Lg/alr;

    new-instance v3, Lg/alr;

    const-string v5, "UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/alr;->UPDATE:Lg/alr;

    new-instance v5, Lg/alr;

    const-string v7, "AUTHORIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/alr;->AUTHORIZE:Lg/alr;

    new-instance v7, Lg/alr;

    const-string v9, "AUTHORIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/alr;->AUTHORIZED:Lg/alr;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/alr;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg/alr;->a:[Lg/alr;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/alr;
    .locals 1

    const-class v0, Lg/alr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/alr;

    return-object p0
.end method

.method public static values()[Lg/alr;
    .locals 1

    sget-object v0, Lg/alr;->a:[Lg/alr;

    invoke-virtual {v0}, [Lg/alr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/alr;

    return-object v0
.end method
