.class public final enum Lg/euc;
.super Ljava/lang/Enum;

# interfaces
.implements Lg/axb;


# static fields
.field public static final synthetic a:[Lg/euc;

.field public static final enum dq:Lg/euc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/euc;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/euc;->dq:Lg/euc;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/euc;

    aput-object v0, v1, v2

    sput-object v1, Lg/euc;->a:[Lg/euc;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/euc;
    .locals 1

    const-class v0, Lg/euc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/euc;

    return-object p0
.end method

.method public static values()[Lg/euc;
    .locals 1

    sget-object v0, Lg/euc;->a:[Lg/euc;

    invoke-virtual {v0}, [Lg/euc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/euc;

    return-object v0
.end method
