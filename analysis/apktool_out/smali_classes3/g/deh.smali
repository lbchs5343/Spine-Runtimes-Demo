.class public final enum Lg/deh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTH_ERROR:Lg/deh;

.field public static final enum BAD_CONFIG:Lg/deh;

.field public static final enum OK:Lg/deh;

.field public static final synthetic a:[Lg/deh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/deh;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/deh;->OK:Lg/deh;

    new-instance v1, Lg/deh;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/deh;->BAD_CONFIG:Lg/deh;

    new-instance v3, Lg/deh;

    const-string v5, "AUTH_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/deh;->AUTH_ERROR:Lg/deh;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/deh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/deh;->a:[Lg/deh;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/deh;
    .locals 1

    const-class v0, Lg/deh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/deh;

    return-object p0
.end method

.method public static values()[Lg/deh;
    .locals 1

    sget-object v0, Lg/deh;->a:[Lg/deh;

    invoke-virtual {v0}, [Lg/deh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/deh;

    return-object v0
.end method
