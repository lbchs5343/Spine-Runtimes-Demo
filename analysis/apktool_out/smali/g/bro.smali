.class public final enum Lg/bro;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTHORIZE:Lg/bro;

.field public static final enum CONNECTING:Lg/bro;

.field public static final enum DENIED:Lg/bro;

.field public static final enum INSTALL:Lg/bro;

.field public static final enum READY:Lg/bro;

.field public static final enum REQUESTING:Lg/bro;

.field public static final enum RESTORE_PERMISSION:Lg/bro;

.field public static final enum RESTORE_SERVICE:Lg/bro;

.field public static final enum START:Lg/bro;

.field public static final enum UNSUPPORTED:Lg/bro;

.field public static final synthetic a:[Lg/bro;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lg/bro;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bro;->UNSUPPORTED:Lg/bro;

    new-instance v1, Lg/bro;

    const-string v3, "INSTALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bro;->INSTALL:Lg/bro;

    new-instance v3, Lg/bro;

    const-string v5, "START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bro;->START:Lg/bro;

    new-instance v5, Lg/bro;

    const-string v7, "RESTORE_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bro;->RESTORE_SERVICE:Lg/bro;

    new-instance v7, Lg/bro;

    const-string v9, "AUTHORIZE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/bro;->AUTHORIZE:Lg/bro;

    new-instance v9, Lg/bro;

    const-string v11, "RESTORE_PERMISSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/bro;->RESTORE_PERMISSION:Lg/bro;

    new-instance v11, Lg/bro;

    const-string v13, "DENIED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/bro;->DENIED:Lg/bro;

    new-instance v13, Lg/bro;

    const-string v15, "READY"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/bro;->READY:Lg/bro;

    new-instance v15, Lg/bro;

    const/16 v17, 0x7

    const-string v2, "REQUESTING"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/bro;->REQUESTING:Lg/bro;

    new-instance v2, Lg/bro;

    const/16 v19, 0x8

    const-string v4, "CONNECTING"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/bro;->CONNECTING:Lg/bro;

    const/16 v4, 0xa

    new-array v4, v4, [Lg/bro;

    aput-object v0, v4, v16

    aput-object v1, v4, v18

    aput-object v3, v4, v20

    aput-object v5, v4, v8

    aput-object v7, v4, v10

    aput-object v9, v4, v12

    aput-object v11, v4, v14

    aput-object v13, v4, v17

    aput-object v15, v4, v19

    aput-object v2, v4, v6

    sput-object v4, Lg/bro;->a:[Lg/bro;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bro;
    .locals 1

    const-class v0, Lg/bro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bro;

    return-object p0
.end method

.method public static values()[Lg/bro;
    .locals 1

    sget-object v0, Lg/bro;->a:[Lg/bro;

    invoke-virtual {v0}, [Lg/bro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bro;

    return-object v0
.end method
