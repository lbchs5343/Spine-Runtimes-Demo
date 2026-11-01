.class public final enum Lg/bbt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CANCEL_AND_REENQUEUE:Lg/bbt;

.field public static final enum KEEP:Lg/bbt;

.field public static final enum REPLACE:Lg/bbt;

.field public static final enum UPDATE:Lg/bbt;

.field public static final synthetic a:[Lg/bbt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/bbt;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bbt;->REPLACE:Lg/bbt;

    new-instance v1, Lg/bbt;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/bbt;->KEEP:Lg/bbt;

    new-instance v3, Lg/bbt;

    const-string v5, "UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/bbt;->UPDATE:Lg/bbt;

    new-instance v5, Lg/bbt;

    const-string v7, "CANCEL_AND_REENQUEUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/bbt;->CANCEL_AND_REENQUEUE:Lg/bbt;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/bbt;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/bbt;->a:[Lg/bbt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bbt;
    .locals 1

    const-class v0, Lg/bbt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bbt;

    return-object p0
.end method

.method public static values()[Lg/bbt;
    .locals 1

    sget-object v0, Lg/bbt;->a:[Lg/bbt;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bbt;

    return-object v0
.end method
