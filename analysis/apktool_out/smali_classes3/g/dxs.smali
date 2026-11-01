.class public abstract enum Lg/dxs;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BIG_DECIMAL:Lg/dxs;

.field public static final enum DOUBLE:Lg/dxs;

.field public static final enum LAZILY_PARSED_NUMBER:Lg/dxs;

.field public static final enum LONG_OR_DOUBLE:Lg/dxs;

.field public static final synthetic a:[Lg/dxs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/bpv;

    invoke-direct {v0}, Lg/bpv;-><init>()V

    sput-object v0, Lg/dxs;->DOUBLE:Lg/dxs;

    new-instance v1, Lg/asl;

    invoke-direct {v1}, Lg/asl;-><init>()V

    sput-object v1, Lg/dxs;->LAZILY_PARSED_NUMBER:Lg/dxs;

    new-instance v2, Lg/fmb;

    invoke-direct {v2}, Lg/fmb;-><init>()V

    sput-object v2, Lg/dxs;->LONG_OR_DOUBLE:Lg/dxs;

    new-instance v3, Lg/gpl;

    invoke-direct {v3}, Lg/gpl;-><init>()V

    sput-object v3, Lg/dxs;->BIG_DECIMAL:Lg/dxs;

    const/4 v4, 0x4

    new-array v4, v4, [Lg/dxs;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lg/dxs;->a:[Lg/dxs;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dxs;
    .locals 1

    const-class v0, Lg/dxs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dxs;

    return-object p0
.end method

.method public static values()[Lg/dxs;
    .locals 1

    sget-object v0, Lg/dxs;->a:[Lg/dxs;

    invoke-virtual {v0}, [Lg/dxs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dxs;

    return-object v0
.end method
