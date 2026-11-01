.class public final enum Lg/agj;
.super Ljava/lang/Enum;


# static fields
.field public static final synthetic a:[Lg/agj;

.field public static final enum d:Lg/agj;

.field public static final enum dq:Lg/agj;

.field public static final enum ox:Lg/agj;

.field public static final enum p:Lg/agj;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/agj;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/agj;->dq:Lg/agj;

    new-instance v1, Lg/agj;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/agj;->d:Lg/agj;

    new-instance v3, Lg/agj;

    const-string v5, "INITIALIZING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/agj;->ox:Lg/agj;

    new-instance v5, Lg/agj;

    const-string v7, "FINISHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/agj;->p:Lg/agj;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/agj;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/agj;->a:[Lg/agj;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/agj;
    .locals 1

    const-class v0, Lg/agj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/agj;

    return-object p0
.end method

.method public static values()[Lg/agj;
    .locals 1

    sget-object v0, Lg/agj;->a:[Lg/agj;

    invoke-virtual {v0}, [Lg/agj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/agj;

    return-object v0
.end method
